part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(false) bool loading,
    UserModel? user,
     @Default(<CommentModel>[]) List<CommentModel> comments,
  }) = _UserLoadedState;
}
