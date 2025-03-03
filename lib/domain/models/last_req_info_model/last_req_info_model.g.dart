// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_req_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastReqInfoModelImpl _$$LastReqInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LastReqInfoModelImpl(
      sreqText: json['sreqText'] as String?,
      sreqId: (json['sreqId'] as num?)?.toInt(),
      sreqStatus:
          $enumDecodeNullable(_$RequestStatusEnumMap, json['sreqStatus']),
      rreqText: json['rreqText'] as String?,
      rreqId: (json['rreqId'] as num?)?.toInt(),
      rreqStatus:
          $enumDecodeNullable(_$RequestStatusEnumMap, json['rreqStatus']),
    );

Map<String, dynamic> _$$LastReqInfoModelImplToJson(
        _$LastReqInfoModelImpl instance) =>
    <String, dynamic>{
      'sreqText': instance.sreqText,
      'sreqId': instance.sreqId,
      'sreqStatus': _$RequestStatusEnumMap[instance.sreqStatus],
      'rreqText': instance.rreqText,
      'rreqId': instance.rreqId,
      'rreqStatus': _$RequestStatusEnumMap[instance.rreqStatus],
    };

const _$RequestStatusEnumMap = {
  RequestStatus.all: 'all',
  RequestStatus.new_: 'new',
  RequestStatus.accepted: 'accepted',
  RequestStatus.rejected: 'rejected',
  RequestStatus.canceled: 'canceled',
};
