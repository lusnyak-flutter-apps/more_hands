import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/request_status.dart';

part 'request_model.freezed.dart';

part 'request_model.g.dart';

@freezed
class RequestModel with _$RequestModel{
  const factory RequestModel({
    @Default(0) int id,
    @Default(0) int senderId,
    @Default(0) int receiverId,
    @Default(0) int userServiceId,
    @Default(0) int serviceId,
    @Default(0) num userRating,
    String? profileImageUrl,
    String? userFirstName,
    String? userLastName,
    String? userMiddleName,
    String? rqText,
    @JsonKey(name: 'createDttm') DateTime? createDate,
    @JsonKey(name: 'modifyDttm') DateTime? modifyDate,
    @JsonKey(name: 'rqStatus')
    @Default(RequestStatus.new_)
    RequestStatus status,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);
}
