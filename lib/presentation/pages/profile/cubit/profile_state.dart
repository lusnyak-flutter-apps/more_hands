part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
   const factory ProfileState({
    @Default(false) bool loading,
      UserModel? user,
      File? userProfileImage,
  }) = _ProfileState;
}
