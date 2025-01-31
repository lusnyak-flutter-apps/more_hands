import 'package:more_hands/core/core.dart';

part 'send_request_model.g.dart';

@JsonSerializable()
class SendRequestModel {
  int? userServiceId;
  int? serviceId;
  int? receiverId;
  String? rqText;

  SendRequestModel({
    this.userServiceId = 0,
    this.serviceId = 0,
    this.receiverId = 0,
    this.rqText,
  });

  factory SendRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SendRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SendRequestModelToJson(this);
}
