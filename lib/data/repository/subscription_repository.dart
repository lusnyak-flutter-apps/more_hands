import 'package:flutter/foundation.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/subscription/subscription_model.dart';

import '../../domain/models/subscription/subscription_status_model.dart';
import '../../presentation/services/subscription_service.dart';
import '../remote/subscription_remote/subscription_remote.dart';

@lazySingleton
class SubscriptionRepository {
  final SubscriptionRemoteApi _remoteApi;
  final SubscriptionService _subscriptionService;

  SubscriptionRepository(this._remoteApi, this._subscriptionService);

  // считаем что mcode - это id подписки
  Future<bool> buySubscription(String productId) async {
    final purchaseStatusInStore =
        await _subscriptionService.buySubscription(productId);
    if (!purchaseStatusInStore) {
      return false;
    }
    await _remoteApi.purchaseSubscription(productId);
    return true;
  }

  // TODO: заменить на реальный запрос
  Future<SubscriptionStatusModel> getSubscriptionStatus() async {
    return const SubscriptionStatusModel(
      isActive: false,
      expiryDate: null,
      currentPlan: null,
    );
  }

  Future<List<SubscriptionModel>> getAvailableSubscriptions() async {
    try {
      // Получаем доступные подписки с бэка
      final serverSubscriptions = await _remoteApi.getAvailableSubscriptions();
      // Получаем только активные mcodes
      final activeMcodes = serverSubscriptions
          .where((sub) => sub.canBuy)
          .map((sub) => sub.mcode)
          .toSet();

      // Получаем доступные подписки с маркета
      final marketSubscriptions =
          await _subscriptionService.queryMarketSubscriptions(activeMcodes);

      // Мёржим данные
      return marketSubscriptions.map((marketSub) {
        final serverSub =
            serverSubscriptions.firstWhere((s) => s.mcode == marketSub.id);

        return marketSub.copyWith(
          koef: serverSub.koef,
          orderNum: serverSub.orderNum,
          canBuy: serverSub.canBuy,
        );
      }).toList()
        ..sort((a, b) => a.orderNum.compareTo(b.orderNum));
    } catch (e) {
      debugPrint('Error getting subscriptions: $e');
      return [];
    }
  }
}
