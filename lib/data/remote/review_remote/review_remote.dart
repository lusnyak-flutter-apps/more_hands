import 'package:dio/dio.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/comment_model/comment_model.dart';
import 'package:more_hands/domain/models/comment_save_req_model/comment_save_req_model.dart';

part 'review_remote.g.dart';

@lazySingleton
@RestApi(baseUrl: APIBase.url)
abstract class ReviewRemoteApi {
  @factoryMethod
  factory ReviewRemoteApi(Dio dio) = _ReviewRemoteApi;

  @POST(EndPoint.userComments)
  Future<void> addUserComments({
    @Body() CommentSaveReqModel? data,
  });

  @GET(EndPoint.getCommentsByUserId)
  Future<List<CommentModel>> getCommentsByUserId({
    @Query('from') int from = 0,
    @Query('to') int to = 10,
  });

  @GET(EndPoint.getReplyCommentToCommentId)
  Future<List<CommentModel>> getReplyCommentToCommentId(
    @Query('replyToCommentId') int replyToCommentId,
  );
}
