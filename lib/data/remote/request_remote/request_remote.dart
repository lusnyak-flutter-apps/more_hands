import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';
import 'package:more_hands/domain/models/send_request_model/send_request_model.dart';

part 'request_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class RequestRemoteApi {
  @factoryMethod
  factory RequestRemoteApi(Dio dio) = _RequestRemoteApi;

  @GET(EndPoint.getRequestsBySender)
  Future<List<RequestModel>?>  getBySender({
    @Query('status') String status = "new",
    @Query('from') int from = 0,
    @Query('to') int to = 10,
  });

  @GET(EndPoint.getRequestsByReceiver)
   Future<List<RequestModel>?>  getByReceiver({
    @Query('status') String status = "new",
    @Query('from') int from = 0,
    @Query('to') int to = 10,
  });

  @POST(EndPoint.createAndSendRequest)
  Future<void> createAndSendRequest({
    @Body() SendRequestModel? data,
  });
}
