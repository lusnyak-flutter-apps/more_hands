// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestModelImpl _$$RequestModelImplFromJson(Map<String, dynamic> json) =>
    _$RequestModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      senderId: (json['senderId'] as num?)?.toInt() ?? 0,
      receiverId: (json['receiverId'] as num?)?.toInt() ?? 0,
      userServiceId: (json['userServiceId'] as num?)?.toInt() ?? 0,
      serviceId: (json['serviceId'] as num?)?.toInt() ?? 0,
      senderRating: json['senderRating'] as num? ?? 0,
      receiverRating: json['receiverRating'] as num? ?? 0,
      seenBySender: json['seenBySender'] as bool? ?? false,
      seenByReceiver: json['seenByReceiver'] as bool? ?? false,
      profileImageUrl: json['profileImageUrl'] as String?,
      userFirstName: json['userFirstName'] as String?,
      userLastName: json['userLastName'] as String?,
      userMiddleName: json['userMiddleName'] as String?,
      rqText: json['rqText'] as String?,
      createDate: json['createDttm'] == null
          ? null
          : DateTime.parse(json['createDttm'] as String),
      modifyDate: json['modifyDttm'] == null
          ? null
          : DateTime.parse(json['modifyDttm'] as String),
      status: $enumDecodeNullable(_$RequestStatusEnumMap, json['rqStatus']) ??
          RequestStatus.new_,
    );

Map<String, dynamic> _$$RequestModelImplToJson(_$RequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'userServiceId': instance.userServiceId,
      'serviceId': instance.serviceId,
      'senderRating': instance.senderRating,
      'receiverRating': instance.receiverRating,
      'seenBySender': instance.seenBySender,
      'seenByReceiver': instance.seenByReceiver,
      'profileImageUrl': instance.profileImageUrl,
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'userMiddleName': instance.userMiddleName,
      'rqText': instance.rqText,
      'createDttm': instance.createDate?.toIso8601String(),
      'modifyDttm': instance.modifyDate?.toIso8601String(),
      'rqStatus': _$RequestStatusEnumMap[instance.status]!,
    };

const _$RequestStatusEnumMap = {
  RequestStatus.all: 'all',
  RequestStatus.new_: 'new',
  RequestStatus.accepted: 'accepted',
  RequestStatus.rejected: 'rejected',
  RequestStatus.canceled: 'canceled',
};
