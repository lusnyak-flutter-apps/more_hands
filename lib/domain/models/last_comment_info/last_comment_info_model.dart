import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';

part 'last_comment_info_model.freezed.dart';

part 'last_comment_info_model.g.dart';

@freezed
class LastCommentInfoModel with _$LastCommentInfoModel {
  const factory LastCommentInfoModel({
    int? scommentId,
    String? scommentVisibility,
    String? scommentText,
    num? scommentStarsGiven,
    int? scommentReplyToCommentId,
    int? rcommentId,
    String? rcommentVisibility,
    String? rcommentText,
    num? rcommentStarsGiven,
    int? rcommentReplyToCommentId,
  }) = _LastCommentInfoModel;

  factory LastCommentInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LastCommentInfoModelFromJson(json);
}


ReviewActionType actionByLastCommentInfo(LastCommentInfoModel? lastComment) {
  if (lastComment?.scommentId == null) {
    return ReviewActionType.leave;
  } else {
    return lastComment?.rcommentId == null ? ReviewActionType.edit : ReviewActionType.view;
  }
}

enum ReviewActionType {
  leave,
  edit,
  view;

  String title(BuildContext context) {
    return switch(this) {
    ReviewActionType.leave => context.localized.leaveAReview,
    ReviewActionType.edit => context.localized.editReview,
    ReviewActionType.view => context.localized.viewReview,
    };
  }
}
