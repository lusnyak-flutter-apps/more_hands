part of 'requests_cubit.dart';

@freezed
class RequestsState with _$RequestsState {

  const factory RequestsState({
  @Default(false) bool loading,
    @Default(RequestStatus.all) RequestStatus selectedStatus,
    @Default(RequestType.receiver) RequestType selectedType,
    @Default([]) List<RequestModel> requests,
    @Default(0) int receiverUnseenCount,
    @Default(0) int senderUnseenCount,
  }) = _RequestsState;
}

