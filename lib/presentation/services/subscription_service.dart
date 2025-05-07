import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer' as developer;
import 'package:more_hands/domain/models/subscription/subscription_model.dart';

@injectable
class SubscriptionService {
  final InAppPurchase _iap = InAppPurchase.instance;

  Future<bool> buySubscription(String productId) async {
    final available = await _iap.isAvailable();
    if (!available) {
      developer.log('IAP not available', name: 'SubscriptionService');
      return false;
    }

    final ProductDetailsResponse response =
        await _iap.queryProductDetails({productId});

    debugPrint(
        '>>> Found products: ${response.productDetails.map((p) => p.id).toList()}\n'
        'Not found products: ${response.notFoundIDs}\n'
        'Error: ${response.error?.message}');

    developer.log(
        'Found products: ${response.productDetails.map((p) => p.id).toList()}\n'
        'Not found products: ${response.notFoundIDs}\n'
        'Error: ${response.error?.message}',
        name: 'SubscriptionService');

    if (response.notFoundIDs.isNotEmpty || response.productDetails.isEmpty) {
      developer.log(
          'No products found. Please check your Google Play Console configuration',
          name: 'SubscriptionService');
      return false;
    }

    final productDetails = response.productDetails.first;
    final purchaseParam = PurchaseParam(productDetails: productDetails);

    final completer = Completer<bool>();
    late StreamSubscription<List<PurchaseDetails>> sub;

    sub = _iap.purchaseStream.listen((purchases) async {
      for (final purchase in purchases) {
        if (purchase.productID == productId &&
            purchase.status == PurchaseStatus.purchased) {
          completer.complete(true);
          await _iap.completePurchase(purchase);
          await sub.cancel();
        } else if (purchase.status == PurchaseStatus.error ||
            purchase.status == PurchaseStatus.canceled) {
          completer.complete(false);
          await sub.cancel();
        }
      }
    });

    await _iap.buyNonConsumable(purchaseParam: purchaseParam);
    return completer.future;
  }

  Future<List<SubscriptionModel>> queryMarketSubscriptions(
    Set<String> productIds,
  ) async {
    final available = await _iap.isAvailable();
    if (!available) {
      developer.log('IAP not available', name: 'SubscriptionService');
      return [];
    }

    final ProductDetailsResponse response =
        await _iap.queryProductDetails(productIds);

    developer.log(
        'Found products: ${response.productDetails.map((p) => p.id).toList()}\n'
        'Not found products: ${response.notFoundIDs}\n'
        'Error: ${response.error?.message}',
        name: 'SubscriptionService');

    return response.productDetails.map((product) {
      return SubscriptionModel(
        id: product.id,
        title: product.title,
        description: product.description,
        price: product.rawPrice,
        currencySymbol: product.currencySymbol,
        durationInDays: _getDurationFromId(product.id),
        koef: 1.0, // Будет обновлено в репозитории
        orderNum: 0, // Будет обновлено в репозитории
        canBuy: true, // Будет обновлено в репозитории
      );
    }).toList();
  }

  int _getDurationFromId(String id) {
    if (id.contains('3-months') || id.contains('3_months')) return 90;
    return 30; // default duration
  }
}
