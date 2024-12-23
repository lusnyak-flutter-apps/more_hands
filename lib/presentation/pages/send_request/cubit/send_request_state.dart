part of 'send_request_cubit.dart';

@freezed
class SendRequestState with _$SendRequestState {
  const factory SendRequestState.loading() = _SendRequestState;
  const factory SendRequestState.loaded() = _SendRequestLoadedState;
  const factory SendRequestState.completed() = _SendRequestCompletedState;
}
