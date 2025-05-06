import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:more_hands/data/repository/subscription_repository.dart';
import 'package:more_hands/domain/models/subscription_status/subscription_status_model.dart';
import 'package:more_hands/presentation/services/subscription_service.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';

@injectable
class SubscriptionCubit extends Cubit<SubscriptionState> {
  final SubscriptionRepository _repository;
  final SubscriptionService _service;

  SubscriptionCubit(this._repository, this._service)
      : super(const SubscriptionState());

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

    final purchaseResult = await _service.buySubscription(productId);
    if (purchaseResult) {
      final backendResult = await _repository.purchaseSubscription(productId);
      if (backendResult) {
        await checkSubscriptionStatus();
      } else {
        emit(state.copyWith(
          loading: false,
          error: 'Failed to verify purchase',
        ));
      }
    } else {
      emit(state.copyWith(
        loading: false,
        error: 'Purchase failed',
      ));
    }
  }
}
