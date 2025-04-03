// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_comment_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastCommentInfoModelImpl _$$LastCommentInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LastCommentInfoModelImpl(
      scommentId: (json['scommentId'] as num?)?.toInt(),
      scommentVisibility: json['scommentVisibility'] as String?,
      scommentText: json['scommentText'] as String?,
      scommentStarsGiven: json['scommentStarsGiven'] as num?,
      scommentReplyToCommentId:
          (json['scommentReplyToCommentId'] as num?)?.toInt(),
      rcommentId: (json['rcommentId'] as num?)?.toInt(),
      rcommentVisibility: json['rcommentVisibility'] as String?,
      rcommentText: json['rcommentText'] as String?,
      rcommentStarsGiven: json['rcommentStarsGiven'] as num?,
      rcommentReplyToCommentId:
          (json['rcommentReplyToCommentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LastCommentInfoModelImplToJson(
        _$LastCommentInfoModelImpl instance) =>
    <String, dynamic>{
      'scommentId': instance.scommentId,
      'scommentVisibility': instance.scommentVisibility,
      'scommentText': instance.scommentText,
      'scommentStarsGiven': instance.scommentStarsGiven,
      'scommentReplyToCommentId': instance.scommentReplyToCommentId,
      'rcommentId': instance.rcommentId,
      'rcommentVisibility': instance.rcommentVisibility,
      'rcommentText': instance.rcommentText,
      'rcommentStarsGiven': instance.rcommentStarsGiven,
      'rcommentReplyToCommentId': instance.rcommentReplyToCommentId,
    };
