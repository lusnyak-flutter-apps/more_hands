// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_short_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationShortModelImpl _$$LocationShortModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationShortModelImpl(
      uslId: (json['usl_id'] as num?)?.toInt(),
      usfLocationId: (json['usf_location_id'] as num?)?.toInt(),
      locName: json['loc_name'] as String,
    );

Map<String, dynamic> _$$LocationShortModelImplToJson(
        _$LocationShortModelImpl instance) =>
    <String, dynamic>{
      'usl_id': instance.uslId,
      'usf_location_id': instance.usfLocationId,
      'loc_name': instance.locName,
    };
