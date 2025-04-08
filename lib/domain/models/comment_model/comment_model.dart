import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/comment_relation_type.dart';
import 'package:more_hands/domain/models/comment_user_data/comment_user_data.dart';

part 'comment_model.freezed.dart';

part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
     int? id,
    @JsonKey(name: "createDttm") DateTime? createAt,
    String? commentText,
    CommentUserDataModel? userData,
    CommentUserDataModel? relatedUserData,
    String? commentVisibility,
    int? requestId,
    @Default(0.0) num? starsGiven,
    CommentModel? relatedComment,
    @Default(CommentRelationType.empty) CommentRelationType relationType,
   }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}

