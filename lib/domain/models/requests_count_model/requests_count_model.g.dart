// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestsCountModelImpl _$$RequestsCountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestsCountModelImpl(
      countSeen: (json['countSeen'] as num?)?.toInt() ?? 0,
      countNotSeen: (json['countNotSeen'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RequestsCountModelImplToJson(
        _$RequestsCountModelImpl instance) =>
    <String, dynamic>{
      'countSeen': instance.countSeen,
      'countNotSeen': instance.countNotSeen,
    };
