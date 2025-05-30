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
      expirationDate: json['expirationDate'] as String,
      refreshToken: json['refreshToken'] as String,
      refreshExpiration: (json['refreshExpiration'] as num).toInt(),
      refreshExpirationDate: json['refreshExpirationDate'] as String,
      refCode: json['ref_code'] as String?,
      closestLoc: (json['closest_loc'] as num?)?.toInt(),
      existingUser: json['existing_user'] as bool?,
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiration': instance.expiration,
      'expirationDate': instance.expirationDate,
      'refreshToken': instance.refreshToken,
      'refreshExpiration': instance.refreshExpiration,
      'refreshExpirationDate': instance.refreshExpirationDate,
      'ref_code': instance.refCode,
      'closest_loc': instance.closestLoc,
      'existing_user': instance.existingUser,
    };
