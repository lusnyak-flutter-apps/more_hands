import 'package:more_hands/core/core.dart';

part 'comment_model.freezed.dart';

part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required int id,
    int? userId,
    int? userRelatedId,
    int? replyToCommentId,
    int? requestId,
    @JsonKey(name: "createDttm") DateTime? createAt,
    @Default(0) num userRating,
    @Default(0) num userRelatedRating,
    @Default(0) int replyToCommentsCount,
    String? commentVisibility,
    String? userFirstName,
    String? commentText,
    String? userLastName,
    String? userMiddleName,
    String? profileImageUrl,
    @Default(true) bool replyToCommentsLoaded,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
