import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/review_remote/review_remote.dart';
import 'package:more_hands/domain/models/comment_model/comment_model.dart';
import 'package:more_hands/domain/models/comment_save_req_model/comment_save_req_model.dart';

@lazySingleton
class CommentsRepository {
  Future<void> addUserComments({
    required CommentSaveReqModel data,
  }) async =>
      await getIt<ReviewRemoteApi>().addUserComments(data: data);

  Future<List<CommentModel>> getCommentsByUserId({
    int from = 0,
    int to = 10,
  }) async =>
      await getIt<ReviewRemoteApi>()
          .getCommentsByUserId(from: from, to: to)
          .catchError((_) => <CommentModel>[]);

  Future<List<CommentModel>> getReplyCommentToCommentId({
    required int replyToCommentId,
  }) async =>
      await getIt<ReviewRemoteApi>()
          .getReplyCommentToCommentId(replyToCommentId)
          .catchError((_) => <CommentModel>[]);
}
