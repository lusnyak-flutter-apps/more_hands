// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrencyModelImpl _$$CurrencyModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyModelImpl(
      id: (json['id'] as num).toInt(),
      curCode: json['curCode'] as String,
      curNumber: (json['curNumber'] as num).toInt(),
      curName: json['curName'] as String,
      curSign: json['curSign'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$CurrencyModelImplToJson(_$CurrencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'curCode': instance.curCode,
      'curNumber': instance.curNumber,
      'curName': instance.curName,
      'curSign': instance.curSign,
      'isActive': instance.isActive,
    };
