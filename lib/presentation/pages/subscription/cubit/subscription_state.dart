part of 'subscription_cubit.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default(false) bool loading,
    SubscriptionStatusModel? subscriptionStatus,
    String? error,
  }) = _SubscriptionState;
}
