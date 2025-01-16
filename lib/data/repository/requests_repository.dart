import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/request_remote/request_remote.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';

@lazySingleton
class RequestsRepository {
  Future<List<RequestModel>> getRequests(
      {RequestStatus status = RequestStatus.new_,
      RequestType type = RequestType.sender,
      int from = 0,
      int to = 10}) async {
    final statusString = status == RequestStatus.all ? status.full : status.rawValue;
    final future = type == RequestType.receiver
        ? getIt<RequestRemoteApi>()
            .getByReceiver(status: statusString ?? "new", from: from, to: to)
        : getIt<RequestRemoteApi>()
            .getBySender(status: statusString ?? "new", from: from, to: to);
    return await future
        .then((onValue) => onValue ?? <RequestModel>[])
        .catchError((_) => <RequestModel>[]);
  }
}
