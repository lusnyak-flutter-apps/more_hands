import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:more_hands/domain/enums/request_status.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';

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

String? actionButtonTitleByLastRequests(
    BuildContext context, LastReqInfoModel? lastReq) {
  RequestStatus? sRequestStatus = lastReq?.sreqStatus;
  RequestStatus? rRequestStatus = lastReq?.rreqStatus;

  // Send request
  if ((sRequestStatus == null || sRequestStatus == RequestStatus.canceled) &&
      rRequestStatus == null) {
    return context.localized.sendRequest;
  }

  if (sRequestStatus == RequestStatus.new_ &&
      (rRequestStatus == RequestStatus.canceled ||
          rRequestStatus == RequestStatus.rejected)) {
    return context.localized.sendRequest;
  }

  // Request sent
  if (sRequestStatus == RequestStatus.new_ && rRequestStatus == null) {
    return context.localized.requestSent;
  }

  // leaveAReview
  if ((sRequestStatus == RequestStatus.new_ ||
          sRequestStatus == RequestStatus.accepted ||
          sRequestStatus == RequestStatus.canceled) &&
      rRequestStatus == RequestStatus.accepted) {
    return context.localized.leaveAReview;
  }

  // Ожидает ответа
  if ((sRequestStatus == null ||
          sRequestStatus == RequestStatus.canceled ||
          sRequestStatus == RequestStatus.rejected) &&
      rRequestStatus == RequestStatus.new_) {
    return context.localized.waitingForAResponse;
  }
  return context.localized.sendRequest;
}

String? actionByLastRequests(LastReqInfoModel? lastReq) {
  RequestStatus? sRequestStatus = lastReq?.sreqStatus;
  RequestStatus? rRequestStatus = lastReq?.rreqStatus;

  // Send request
  if ((sRequestStatus == null || sRequestStatus == RequestStatus.canceled) &&
      rRequestStatus == null) {
    return sendRequest;
  }

  if (sRequestStatus == RequestStatus.new_ &&
      (rRequestStatus == RequestStatus.canceled ||
          rRequestStatus == RequestStatus.rejected)) {
    return sendRequest;
  }

  // Request sent
  if (sRequestStatus == RequestStatus.new_ && rRequestStatus == null) {
    return requestSent;
  }

  // leaveAReview
  if ((sRequestStatus == RequestStatus.new_ ||
          sRequestStatus == RequestStatus.accepted ||
          sRequestStatus == RequestStatus.canceled) &&
      rRequestStatus == RequestStatus.accepted) {
    return leaveAReview;
  }

  // Ожидает ответа
  if ((sRequestStatus == null ||
          sRequestStatus == RequestStatus.canceled ||
          sRequestStatus == RequestStatus.rejected) &&
      rRequestStatus == RequestStatus.new_) {
    return waitingForAResponse;
  }

  return sendRequest;
}

const waitingForAResponse = "waitingForAResponse";
const leaveAReview = "leaveAReview";
const requestSent = "requestSent";
const sendRequest = "sendRequest";
const removeService = "removeService";
