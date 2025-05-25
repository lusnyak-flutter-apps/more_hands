// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionModelImpl _$$SubscriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      durationInDays: (json['durationInDays'] as num).toInt(),
      currencySymbol: json['currencySymbol'] as String?,
      koef: (json['koef'] as num?)?.toDouble() ?? 1.0,
      orderNum: (json['orderNum'] as num?)?.toInt(),
      canBuy: json['canBuy'] as bool? ?? true,
    );

Map<String, dynamic> _$$SubscriptionModelImplToJson(
        _$SubscriptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'durationInDays': instance.durationInDays,
      'currencySymbol': instance.currencySymbol,
      'koef': instance.koef,
      'orderNum': instance.orderNum,
      'canBuy': instance.canBuy,
    };
