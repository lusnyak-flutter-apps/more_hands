import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/requests_repository.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/domain/models/request_model/request_model.dart';

part 'requests_state.dart';

part 'requests_cubit.freezed.dart';

@injectable
class RequestsCubit extends Cubit<RequestsState> {
  RequestsCubit() : super(const RequestsState());

  Future<void> getRequests() async {
    if (state.loading) return;
    emit(state.copyWith(loading: true));
    try {
      final requests = await getIt<RequestsRepository>().getRequests(
          status: state.selectedStatus,
          type: state.selectedType,
          from: state.requests.length,
          to: state.requests.length + 10);
      emit(state.copyWith(requests: requests, loading: false));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> approveRequest(int id) async {
    if (state.loading) return;
    return  await getIt<RequestsRepository>().approveRequest(reqId: id).then((onValue){
      List<RequestModel> requests = [...state.requests];
      requests.removeWhere((e)=>e.id == id);
      emit(state.copyWith(requests:requests, loading: false));
    });
  }

  Future<void> rejectRequest(int id) async {
    if (state.loading) return;

    return  await getIt<RequestsRepository>().rejectRequest(reqId: id).then((onValue){
      List<RequestModel> requests = [...state.requests];
      requests.removeWhere((e)=>e.id == id);
      emit(state.copyWith(requests:requests, loading: false));
    });
  }

  Future<void> cancelRequest(int id) async {
    if (state.loading) return;
    // emit(state.copyWith(loading: true));
    return  await getIt<RequestsRepository>().cancelRequest(reqId: id).then((onValue){
      List<RequestModel> requests = [...state.requests];
      requests.removeWhere((e)=>e.id == id);
      emit(state.copyWith(requests:requests, loading: false));
    });
  }

  Future<void> changeSection(int section) async {
    if (state.loading) return;
    final type = section == 0 ? RequestType.sender : RequestType.receiver;
    emit(state.copyWith(
        selectedType: type,
        selectedStatus: RequestStatus.all,
        requests: <RequestModel>[]));
    await getRequests();
  }

  Future<void> changeFilter(RequestStatus filter) async {
    if (state.loading) return;
    emit(state.copyWith(selectedStatus: filter, requests: <RequestModel>[]));
    await getRequests();
  }
}
