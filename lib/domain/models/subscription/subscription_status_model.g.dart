// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionStatusModelImpl _$$SubscriptionStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionStatusModelImpl(
      isActive: json['isActive'] as bool,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      currentPlan: json['currentPlan'] as String?,
    );

Map<String, dynamic> _$$SubscriptionStatusModelImplToJson(
        _$SubscriptionStatusModelImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'currentPlan': instance.currentPlan,
    };
