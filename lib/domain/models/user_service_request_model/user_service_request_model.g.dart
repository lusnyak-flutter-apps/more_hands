// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserServiceRequestModel _$UserServiceRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserServiceRequestModel(
      userServiceId: (json['userServiceId'] as num?)?.toInt() ?? 0,
      servCatMCode: json['servCatMCode'] as String?,
      serviceMCode: json['serviceMCode'] as String?,
      addInfo: json['addInfo'] as String?,
      servMeasMCode: json['servMeasMCode'] as String?,
      priceCurrency: json['priceCurrency'] as String?,
      price: json['price'] as num? ?? 0,
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$UserServiceRequestModelToJson(
        UserServiceRequestModel instance) =>
    <String, dynamic>{
      'userServiceId': instance.userServiceId,
      'servCatMCode': instance.servCatMCode,
      'serviceMCode': instance.serviceMCode,
      'addInfo': instance.addInfo,
      'servMeasMCode': instance.servMeasMCode,
      'priceCurrency': instance.priceCurrency,
      'price': instance.price,
      'locations': instance.locations,
    };
