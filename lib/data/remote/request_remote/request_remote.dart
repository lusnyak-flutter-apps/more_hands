import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';
import 'package:more_hands/domain/models/requests_count_model/requests_count_model.dart';
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

  @GET(EndPoint.getUnseenCountBySender)
  Future<RequestsCountModel?>  getUnseenCountBySender({
    @Query('status') String status = "new"
  });

  @GET(EndPoint.getRequestsByReceiver)
   Future<List<RequestModel>?>  getByReceiver({
    @Query('status') String status = "new",
    @Query('from') int from = 0,
    @Query('to') int to = 10,
  });

  @GET(EndPoint.getUnseenCountByReceiver)
  Future<RequestsCountModel?>  getUnseenCountByReceiver({
    @Query('status') String status = "new"
  });

  @POST(EndPoint.seenRequest)
  Future<void> seenRequest({
     @Query('reqId') required int reqId,
   });

  @POST(EndPoint.rejectRequest)
  Future<void>  rejectRequest({
     @Query('reqId') required int reqId,
   });

  @POST(EndPoint.cancelRequest)
  Future<void>  cancelRequest({
    @Query('reqId') required int reqId,
  });


  @POST(EndPoint.approveRequest)
  Future<void>  approveRequest({
    @Query('reqId') required int reqId,
  });

  @POST(EndPoint.createAndSendRequest)
  Future<void> createAndSendRequest({
    @Body() SendRequestModel? data,
  });
}
