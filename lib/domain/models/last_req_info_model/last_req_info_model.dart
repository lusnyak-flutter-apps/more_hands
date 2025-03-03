import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:more_hands/domain/enums/request_status.dart';

part 'last_req_info_model.freezed.dart';
part 'last_req_info_model.g.dart';

@freezed
class LastReqInfoModel with _$LastReqInfoModel {
  const factory LastReqInfoModel({
    String? sreqText,
    int? sreqId,
    RequestStatus? sreqStatus,
    String? rreqText,
    int? rreqId,
    RequestStatus? rreqStatus,
  }) = _LastReqInfoModel;

factory LastReqInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LastReqInfoModelFromJson(json);
}
