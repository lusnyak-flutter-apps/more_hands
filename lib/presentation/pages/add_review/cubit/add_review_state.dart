part of 'add_review_cubit.dart';

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState({
    @Default(false) bool loading,
    @Default(false) bool completed,
    @Default(0.0) double rating,
    int? replyToCommentId,
    int? requestId,
    String? userRelatedLogin,
  }) = _AddReviewState;
}
