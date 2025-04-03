// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_save_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentSaveReqModel _$CommentSaveReqModelFromJson(Map<String, dynamic> json) =>
    CommentSaveReqModel(
      commentVisibility: json['commentVisibility'] as String? ?? "visible",
      userRelatedLogin: json['userRelatedLogin'] as String?,
      commentText: json['commentText'] as String?,
      starsGiven: json['starsGiven'] as num?,
      replyToCommentId: (json['replyToCommentId'] as num?)?.toInt(),
      requestId: (json['requestId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CommentSaveReqModelToJson(
        CommentSaveReqModel instance) =>
    <String, dynamic>{
      'commentVisibility': instance.commentVisibility,
      'userRelatedLogin': instance.userRelatedLogin,
      'commentText': instance.commentText,
      'starsGiven': instance.starsGiven,
      'replyToCommentId': instance.replyToCommentId,
      'requestId': instance.requestId,
    };

CommentEditReqModel _$CommentEditReqModelFromJson(Map<String, dynamic> json) =>
    CommentEditReqModel(
      commentVisibility: json['commentVisibility'] as String? ?? "visible",
      commentText: json['commentText'] as String?,
      starsGiven: json['starsGiven'] as num?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CommentEditReqModelToJson(
        CommentEditReqModel instance) =>
    <String, dynamic>{
      'commentVisibility': instance.commentVisibility,
      'commentText': instance.commentText,
      'starsGiven': instance.starsGiven,
      'id': instance.id,
    };
