import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';

part 'send_request_state.dart';

part 'send_request_cubit.freezed.dart';

@injectable
class SendRequestCubit extends Cubit<SendRequestState> {
  SendRequestCubit() : super(const SendRequestState.loaded());

  TextEditingController controller = TextEditingController();

  void sendRequest() {
    emit(const SendRequestState.completed());
  }
}
