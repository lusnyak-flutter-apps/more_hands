// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      id: (json['id'] as num).toInt(),
      curCode: $enumDecode(_$CurrencyCodeEnumMap, json['curCode']),
      curNumber: (json['curNumber'] as num).toInt(),
      curName: json['curName'] as String,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'curCode': _$CurrencyCodeEnumMap[instance.curCode]!,
      'curNumber': instance.curNumber,
      'curName': instance.curName,
    };

const _$CurrencyCodeEnumMap = {
  CurrencyCode.usDollar: 'USD',
  CurrencyCode.euro: 'EUR',
  CurrencyCode.ruble: 'RUB',
};
