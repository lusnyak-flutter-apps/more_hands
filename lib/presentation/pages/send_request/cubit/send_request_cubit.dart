import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/domain/models/send_request_model/send_request_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';

part 'send_request_state.dart';

part 'send_request_cubit.freezed.dart';

@injectable
class SendRequestCubit extends Cubit<SendRequestState> {
  SendRequestCubit() : super(const SendRequestState());

  TextEditingController controller = TextEditingController();

  void setReceiverId(int receiverId, {ServiceModel? service}) {
    emit(state.copyWith(receiverId: receiverId));
  }

  Future<void> sendRequest() async {
    if (state.receiverId != null && controller.text.isNotEmpty) {
      emit(state.copyWith(loading: true));
      final param = SendRequestModel(
        receiverId: state.receiverId,
        rqText: controller.text,
        serviceId: state.service?.serviceInfo?.servId,
        userServiceId: state.service?.serviceAdditionalInfo?.userServiceId,
      );
      debugPrint(param.toJson().toString());
      try {
        await getIt<RequestsRepository>()
            .createAndSendRequest(sendModel: param);
        emit(state.copyWith(
            loading: false, completed: true, haveNoSubscription: false));
      } catch (e) {
        emit(state.copyWith(
            loading: false, completed: false, haveNoSubscription: true));
      }
    }
  }
}
