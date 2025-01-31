part of 'send_request_cubit.dart';

@freezed
class SendRequestState with _$SendRequestState {
  const factory SendRequestState({
    @Default(false) bool loading,
    @Default(false) bool completed,
    @Default(false) bool haveNoSubscription,
    int? receiverId,

}) = _SendRequestState;
}
