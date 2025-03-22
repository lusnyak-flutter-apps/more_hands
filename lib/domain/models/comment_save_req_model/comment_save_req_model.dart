import '../../../core/core.dart';

part 'comment_save_req_model.g.dart';

@JsonSerializable()
class CommentSaveReqModel {
  String? commentVisibility;
  String? userRelatedLogin;
  String? commentText;
  num? starsGiven;
  int? replyToCommentId;
  int? requestId;

  CommentSaveReqModel({
    this.commentVisibility = "visible",
    this.userRelatedLogin,
    this.commentText,
    this.starsGiven,
    this.replyToCommentId,
    this.requestId,
  });

  factory CommentSaveReqModel.fromJson(Map<String, dynamic> json) =>
      _$CommentSaveReqModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentSaveReqModelToJson(this);
}
