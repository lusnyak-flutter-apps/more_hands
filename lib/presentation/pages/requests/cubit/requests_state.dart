part of 'requests_cubit.dart';

@freezed
class RequestsState with _$RequestsState {

  const factory RequestsState({
  @Default(false) bool loading,
    @Default(RequestStatus.all) RequestStatus selectedStatus,
    @Default(RequestType.sender) RequestType selectedType,
    @Default([]) List<RequestModel> requests,
  }) = _RequestsState;
}

