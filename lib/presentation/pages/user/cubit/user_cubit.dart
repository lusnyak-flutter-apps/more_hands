import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/domain/models/comment_model/comment_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

import '../../../../data/repository/comments_repository.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  Future<void> loadUser(int userId) async {
    emit(state.copyWith(loading: true));
    await getIt<UsersRepository>().getUserInfo(userId: userId).then((user) {
      if (user != null) {
        emit(state.copyWith(user: user, loading: false));
      } else {
        emit(state.copyWith(loading: false));
      }
    });
  }

  Future<void> getComments(int userId) async {
    await getIt<CommentsRepository>()
        .getCommentsByRelatedUserId(userId: state.user?.userInfo?.id ?? userId)
        .then((value) {
      emit(state.copyWith(comments: value));
    });
  }
}
