import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';

import '../../../domain/models/subscription/server_subscription_dto.dart';

part 'subscription_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class SubscriptionRemoteApi {
  @factoryMethod
  factory SubscriptionRemoteApi(Dio dio) = _SubscriptionRemoteApi;

  @POST(EndPoint.buyHandshakes)
  Future<dynamic> purchaseSubscription(
    @Query('tt') String subscriptionId,
  );

  @GET(EndPoint.transactionTypeCanBuy)
  Future<List<ServerSubscriptionDTO>> getAvailableSubscriptions();
}
