// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      token: json['token'] as String,
      expiration: (json['expiration'] as num).toInt(),
      refCode: json['ref_code'] as String,
      closestLoc: (json['closest_loc'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiration': instance.expiration,
      'ref_code': instance.refCode,
      'closest_loc': instance.closestLoc,
    };
