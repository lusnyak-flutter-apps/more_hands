import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:more_hands/data/repository/subscription_repository.dart';
import 'package:more_hands/domain/models/subscription/subscription_model.dart';

import '../../../../domain/models/subscription/subscription_status_model.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';

@injectable
class SubscriptionCubit extends Cubit<SubscriptionState> {
  final SubscriptionRepository _repository;

  SubscriptionCubit(this._repository) : super(const SubscriptionState());

  Future<void> checkSubscriptionStatus() async {
    emit(state.copyWith(loading: true));
    final status = await _repository.getSubscriptionStatus();
    emit(state.copyWith(
      loading: false,
      subscriptionStatus: status,
    ));
  }

  Future<void> purchaseSubscription(String productId) async {
    emit(state.copyWith(loading: true));

    final purchaseResult = await _repository.buySubscription(productId);
    if (purchaseResult) {
      await checkSubscriptionStatus();
    } else {
      emit(state.copyWith(
        loading: false,
        error: 'Purchase failed',
      ));
    }
  }

  Future<void> loadAvailableSubscriptions() async {
    emit(state.copyWith(loading: true));
    final subscriptions = await _repository.getAvailableSubscriptions();
    emit(state.copyWith(
      loading: false,
      availableSubscriptions: subscriptions,
    ));
  }
}
