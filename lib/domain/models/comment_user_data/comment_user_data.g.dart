// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentUserDataModelImpl _$$CommentUserDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentUserDataModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userLogin: json['userLogin'] as String?,
      userFirstName: json['userFirstName'] as String?,
      userLastName: json['userLastName'] as String?,
      userMiddleName: json['userMiddleName'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      userRating: (json['userRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CommentUserDataModelImplToJson(
        _$CommentUserDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userLogin': instance.userLogin,
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'userMiddleName': instance.userMiddleName,
      'profileImageUrl': instance.profileImageUrl,
      'userRating': instance.userRating,
    };
