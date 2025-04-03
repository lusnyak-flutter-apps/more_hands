// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userInfo: json['userInfo'] == null
          ? null
          : UserInfoModel.fromJson(json['userInfo'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ServiceModel>[],
      lastReqInfo: json['lastReqInfo'] == null
          ? null
          : LastReqInfoModel.fromJson(
              json['lastReqInfo'] as Map<String, dynamic>),
      lastCommentInfo: json['lastCommentInfo'] == null
          ? null
          : LastCommentInfoModel.fromJson(
              json['lastCommentInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'services': instance.services,
      'lastReqInfo': instance.lastReqInfo,
      'lastCommentInfo': instance.lastCommentInfo,
    };
