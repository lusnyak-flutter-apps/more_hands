part of 'subscription_cubit.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default(false) bool loading,
    @Default([]) List<SubscriptionModel> availableSubscriptions,
    SubscriptionStatusModel? subscriptionStatus,
    String? error,
  }) = _SubscriptionState;
}
