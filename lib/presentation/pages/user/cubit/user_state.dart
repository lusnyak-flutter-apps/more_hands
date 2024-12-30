part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _UserState;
  const factory UserState.loaded({
   required UserModel user,
}) = _UserLoadedState;
}
