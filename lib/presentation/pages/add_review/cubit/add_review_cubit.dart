import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/comments_repository.dart';
import 'package:more_hands/domain/models/comment_save_req_model/comment_save_req_model.dart';
import 'package:more_hands/domain/models/last_comment_info/last_comment_info_model.dart';

part 'add_review_cubit.freezed.dart';

part 'add_review_state.dart';

@injectable
class AddReviewCubit extends Cubit<AddReviewState> {
  AddReviewCubit() : super(const AddReviewState());

  TextEditingController controller = TextEditingController();

  void setupData(
      {int? replyToCommentId,
      int? requestId,
      String? userRelatedLogin,
      LastCommentInfoModel? commentForEdit}) {
    if (commentForEdit != null) {
      controller.text = commentForEdit.scommentText ?? "";
    }
    emit(
      state.copyWith(
        replyToCommentId: replyToCommentId,
        requestId: requestId,
        userRelatedLogin: userRelatedLogin,
        commentForReview: commentForEdit,
        rating: commentForEdit?.scommentStarsGiven?.toDouble() ?? 0.0,
      ),
    );
  }

  void onRatingUpdate(double value) {
    emit(state.copyWith(rating: value));
  }

  Future<void> onLeaveReview() async {
    emit(state.copyWith(loading: true));
    final data = CommentSaveReqModel(
      userRelatedLogin: state.userRelatedLogin,
      replyToCommentId: state.replyToCommentId,
      requestId: state.requestId,
      commentVisibility: "visible",
      commentText: controller.text,
      starsGiven: state.rating.toInt(),
    );
    await getIt<CommentsRepository>().addUserComments(data: data).then((_) {
      emit(state.copyWith(loading: false, completed: true));
    }).catchError((_) {
      emit(state.copyWith(loading: false, completed: false));
    });
  }

  Future<void> onEditReview() async {
    emit(state.copyWith(loading: true));
    final data = CommentEditReqModel(
       id: state.commentForReview?.scommentId,
      commentVisibility: "visible",
      commentText: controller.text,
      starsGiven: state.rating.toInt(),
    );
    await getIt<CommentsRepository>().editUserComments(data: data).then((_) {
      emit(state.copyWith(loading: false, completed: true));
    }).catchError((_) {
      emit(state.copyWith(loading: false, completed: false));
    });
  }
}
