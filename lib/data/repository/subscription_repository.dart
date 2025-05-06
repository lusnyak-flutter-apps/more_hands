import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/subscription_status/subscription_status_model.dart';

import '../remote/subscription_remote/subscription_remote.dart';

@lazySingleton
class SubscriptionRepository {
  Future<bool> purchaseSubscription(String subscriptionId) async =>
      await getIt<SubscriptionRemoteApi>().purchaseSubscription(subscriptionId);

  // Заглушка, заменить на реальный запрос позже
  Future<SubscriptionStatusModel> getSubscriptionStatus() async {
    return const SubscriptionStatusModel(
      isActive: false,
      expiryDate: null,
      currentPlan: null,
    );
  }
}
