// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendRequestModel _$SendRequestModelFromJson(Map<String, dynamic> json) =>
    SendRequestModel(
      userServiceId: (json['userServiceId'] as num?)?.toInt() ?? 0,
      serviceId: (json['serviceId'] as num?)?.toInt() ?? 0,
      receiverId: (json['receiverId'] as num?)?.toInt() ?? 0,
      rqText: json['rqText'] as String?,
    );

Map<String, dynamic> _$SendRequestModelToJson(SendRequestModel instance) =>
    <String, dynamic>{
      'userServiceId': instance.userServiceId,
      'serviceId': instance.serviceId,
      'receiverId': instance.receiverId,
      'rqText': instance.rqText,
    };
