// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userRelatedId: (json['userRelatedId'] as num?)?.toInt(),
      replyToCommentId: (json['replyToCommentId'] as num?)?.toInt(),
      requestId: (json['requestId'] as num?)?.toInt(),
      createAt: json['createDttm'] == null
          ? null
          : DateTime.parse(json['createDttm'] as String),
      userRating: json['userRating'] as num? ?? 0,
      userRelatedRating: json['userRelatedRating'] as num? ?? 0,
      replyToCommentsCount:
          (json['replyToCommentsCount'] as num?)?.toInt() ?? 0,
      commentVisibility: json['commentVisibility'] as String?,
      userFirstName: json['userFirstName'] as String?,
      commentText: json['commentText'] as String?,
      userLastName: json['userLastName'] as String?,
      userMiddleName: json['userMiddleName'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      replyToCommentsLoaded: json['replyToCommentsLoaded'] as bool? ?? true,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userRelatedId': instance.userRelatedId,
      'replyToCommentId': instance.replyToCommentId,
      'requestId': instance.requestId,
      'createDttm': instance.createAt?.toIso8601String(),
      'userRating': instance.userRating,
      'userRelatedRating': instance.userRelatedRating,
      'replyToCommentsCount': instance.replyToCommentsCount,
      'commentVisibility': instance.commentVisibility,
      'userFirstName': instance.userFirstName,
      'commentText': instance.commentText,
      'userLastName': instance.userLastName,
      'userMiddleName': instance.userMiddleName,
      'profileImageUrl': instance.profileImageUrl,
      'replyToCommentsLoaded': instance.replyToCommentsLoaded,
    };
