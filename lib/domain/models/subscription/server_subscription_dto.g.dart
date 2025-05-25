// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_subscription_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerSubscriptionDTOImpl _$$ServerSubscriptionDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerSubscriptionDTOImpl(
      id: (json['id'] as num).toInt(),
      mcode: json['mcode'] as String,
      typeName: json['typeName'] as String,
      transValue: (json['transValue'] as num).toInt(),
      operationType: json['operationType'] as String,
      valueMod: json['valueMod'] as String,
      canBuy: json['canBuy'] as bool,
      orderNum: (json['orderNum'] as num?)?.toInt(),
      koef: (json['koef'] as num).toDouble(),
    );

Map<String, dynamic> _$$ServerSubscriptionDTOImplToJson(
        _$ServerSubscriptionDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mcode': instance.mcode,
      'typeName': instance.typeName,
      'transValue': instance.transValue,
      'operationType': instance.operationType,
      'valueMod': instance.valueMod,
      'canBuy': instance.canBuy,
      'orderNum': instance.orderNum,
      'koef': instance.koef,
    };
