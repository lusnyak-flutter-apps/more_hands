part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileState;
  const factory ProfileState.loaded({
    required UserModel user,
      File? userProfileImage,
  }) = _ProfileLoadedState;

}
