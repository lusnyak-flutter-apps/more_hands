part of 'profile_edit_cubit.dart';

@freezed
class ProfileEditState with _$ProfileEditState {
   const factory ProfileEditState({
     UserModel? user,
    @Default(false) bool loading,
    @Default(false) bool editedComplete,
     @Default(ContactType.none) ContactType primaryContact,
  }) = _ProfileEditState;
}
