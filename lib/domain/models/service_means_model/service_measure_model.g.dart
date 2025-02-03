// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_measure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceMeasureModelImpl _$$ServiceMeasureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceMeasureModelImpl(
      id: (json['id'] as num).toInt(),
      mCode: $enumDecodeNullable(_$MeasureCodeEnumMap, json['mCode']) ??
          MeasureCode.hour,
      name: json['measName'] as String?,
    );

Map<String, dynamic> _$$ServiceMeasureModelImplToJson(
        _$ServiceMeasureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mCode': _$MeasureCodeEnumMap[instance.mCode]!,
      'measName': instance.name,
    };

const _$MeasureCodeEnumMap = {
  MeasureCode.year: 'service.measure.year',
  MeasureCode.day: 'service.measure.day',
  MeasureCode.month: 'service.measure.month',
  MeasureCode.week: 'service.measure.week',
  MeasureCode.hour: 'service.measure.hour',
  MeasureCode.service: 'service.measure.service',
};
