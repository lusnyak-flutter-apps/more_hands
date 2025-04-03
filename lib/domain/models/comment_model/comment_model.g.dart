// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: (json['id'] as num?)?.toInt(),
      createAt: json['createDttm'] == null
          ? null
          : DateTime.parse(json['createDttm'] as String),
      commentText: json['commentText'] as String?,
      userData: json['userData'] == null
          ? null
          : CommentUserDataModel.fromJson(
              json['userData'] as Map<String, dynamic>),
      relatedUserData: json['relatedUserData'] == null
          ? null
          : CommentUserDataModel.fromJson(
              json['relatedUserData'] as Map<String, dynamic>),
      commentVisibility: json['commentVisibility'] as String?,
      requestId: (json['requestId'] as num?)?.toInt(),
      relatedComment: json['relatedComment'] == null
          ? null
          : CommentModel.fromJson(
              json['relatedComment'] as Map<String, dynamic>),
      relationType: $enumDecodeNullable(
              _$CommentRelationTypeEnumMap, json['relationType']) ??
          CommentRelationType.empty,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createDttm': instance.createAt?.toIso8601String(),
      'commentText': instance.commentText,
      'userData': instance.userData,
      'relatedUserData': instance.relatedUserData,
      'commentVisibility': instance.commentVisibility,
      'requestId': instance.requestId,
      'relatedComment': instance.relatedComment,
      'relationType': _$CommentRelationTypeEnumMap[instance.relationType]!,
    };

const _$CommentRelationTypeEnumMap = {
  CommentRelationType.empty: 'empty',
  CommentRelationType.child: 'child',
  CommentRelationType.parent: 'parent',
};
