import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_user_data.freezed.dart';

part 'comment_user_data.g.dart';

@freezed
class CommentUserDataModel with _$CommentUserDataModel {
  const factory CommentUserDataModel({
    int? userId,
    String? userLogin,
    String? userFirstName,
    String? userLastName,
    String? userMiddleName,
    String? profileImageUrl,
    double? userRating,
  }) = _CommentUserDataModel;

  factory CommentUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$CommentUserDataModelFromJson(json);
}
