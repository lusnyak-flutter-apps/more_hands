// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_additional_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceAdditionalInfoModelImpl _$$ServiceAdditionalInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceAdditionalInfoModelImpl(
      userServiceId: (json['userServiceId'] as num).toInt(),
      servMeasId: (json['servMeasId'] as num?)?.toInt(),
      measureCode:
          $enumDecodeNullable(_$MeasureCodeEnumMap, json['servMeasMcode']),
      servMCode: json['servMcode'] as String?,
      priceCurrency: json['priceCurrency'] as String?,
      price: json['price'] as num?,
      addInfo: json['addInfo'] as String?,
    );

Map<String, dynamic> _$$ServiceAdditionalInfoModelImplToJson(
        _$ServiceAdditionalInfoModelImpl instance) =>
    <String, dynamic>{
      'userServiceId': instance.userServiceId,
      'servMeasId': instance.servMeasId,
      'servMeasMcode': _$MeasureCodeEnumMap[instance.measureCode],
      'servMcode': instance.servMCode,
      'priceCurrency': instance.priceCurrency,
      'price': instance.price,
      'addInfo': instance.addInfo,
    };

const _$MeasureCodeEnumMap = {
  MeasureCode.year: 'service.measure.year',
  MeasureCode.day: 'service.measure.day',
  MeasureCode.month: 'service.measure.month',
  MeasureCode.week: 'service.measure.week',
  MeasureCode.hour: 'service.measure.hour',
  MeasureCode.service: 'service.measure.service',
};
