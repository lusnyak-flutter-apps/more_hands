// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      uslId: (json['usl_id'] as num?)?.toInt(),
      usfLocationId: (json['usf_location_id'] as num?)?.toInt(),
      locName: json['loc_name'] as String,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'usl_id': instance.uslId,
      'usf_location_id': instance.usfLocationId,
      'loc_name': instance.locName,
    };
