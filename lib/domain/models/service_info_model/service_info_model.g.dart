// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceInfoModelImpl _$$ServiceInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceInfoModelImpl(
      servId: (json['servId'] as num).toInt(),
      servMCode: json['servMcode'] as String?,
      servName: json['servName'] as String?,
      servImageUrl: json['servImageUrl'] as String?,
    );

Map<String, dynamic> _$$ServiceInfoModelImplToJson(
        _$ServiceInfoModelImpl instance) =>
    <String, dynamic>{
      'servId': instance.servId,
      'servMcode': instance.servMCode,
      'servName': instance.servName,
      'servImageUrl': instance.servImageUrl,
    };
