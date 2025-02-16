import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/request_remote/request_remote.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';
import 'package:more_hands/domain/models/send_request_model/send_request_model.dart';

@lazySingleton
class RequestsRepository {
  Future<List<RequestModel>> getRequests(
      {RequestStatus status = RequestStatus.new_,
      RequestType type = RequestType.sender,
      int from = 0,
      int to = 10}) async {
    final statusString =
        status == RequestStatus.all ? status.full : status.rawValue;
    final future = type == RequestType.receiver
        ? getIt<RequestRemoteApi>()
            .getByReceiver(status: statusString ?? "new", from: from, to: to)
        : getIt<RequestRemoteApi>()
            .getBySender(status: statusString ?? "new", from: from, to: to);
    return await future
        .then((onValue) => onValue ?? <RequestModel>[])
        .catchError((_) => <RequestModel>[]);
  }

  Future<(int, int)> getUnseenRequestsCount() async {
    try {
      final senderUnseenCount = await getIt<RequestRemoteApi>().getUnseenCountBySender();
      final receiverUnseenCount = await getIt<RequestRemoteApi>().getUnseenCountByReceiver();
      return (receiverUnseenCount?.countNotSeen ?? 0, senderUnseenCount?.countNotSeen ?? 0);
    } catch(e){
      debugPrint(e.toString());
      return (0,0);
    }
  }

  Future<void> seenRequest({
    required int reqId,
  }) async =>
      await getIt<RequestRemoteApi>().seenRequest(reqId: reqId);

  Future<void> createAndSendRequest({
    required SendRequestModel sendModel,
  }) async =>
      await getIt<RequestRemoteApi>().createAndSendRequest(data: sendModel);

  Future<void> cancelRequest({
    required int reqId,
  }) async =>
      await getIt<RequestRemoteApi>().cancelRequest(reqId: reqId);

  Future<void> rejectRequest({
    required int reqId,
  }) async =>
      await getIt<RequestRemoteApi>().rejectRequest(reqId: reqId);

  Future<void> approveRequest({
    required int reqId,
  }) async =>
      await getIt<RequestRemoteApi>().approveRequest(reqId: reqId);
}
