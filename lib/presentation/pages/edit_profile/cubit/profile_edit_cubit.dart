import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/profile_repository.dart';
import 'package:more_hands/domain/enums/contact_type.dart';
import 'package:more_hands/domain/models/edit_bio_request_model/edit_bio_request_model.dart';
import 'package:more_hands/domain/models/edit_contacts_request_model/edit_contacts_request_model.dart';
import 'package:more_hands/domain/models/edit_name_request_model/edit_name_request_model.dart';

import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'profile_edit_state.dart';

part 'profile_edit_cubit.freezed.dart';

@injectable
class ProfileEditCubit extends Cubit<ProfileEditState> {
  ProfileEditCubit() : super(const ProfileEditState());

  final TextEditingController bioController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController telegramController = TextEditingController();
  final TextEditingController whatsAppController = TextEditingController();
  final TextEditingController fbController = TextEditingController();
  final TextEditingController instagramController = TextEditingController();

  Future<void> loadNameAndImage(UserModel user) async {
    final firstName = user.userInfo?.firstName ?? "";
    final lastName = user.userInfo?.lastName ?? "";
    final middleName = user.userInfo?.middleName ?? "";
    nameController.text = "$firstName $lastName $middleName";
    emit(
      ProfileEditState(
        user: user,
      ),
    );
  }

  Future<void> loadBio(UserModel user) async {
    bioController.text = user.userInfo?.bio ?? "";
    emit(ProfileEditState(user: user));
  }

  Future<void> loadContacts(UserModel user) async {
    instagramController.text = user.userInfo?.instagramLink ?? "";
    fbController.text = user.userInfo?.facebookLink ?? "";
    whatsAppController.text = user.userInfo?.whatsappLink ?? "";
    telegramController.text = user.userInfo?.telegramLink ?? "";
    emit(
      ProfileEditState(
        user: user,
        primaryContact: ContactType.none,
      ),
    );
  }

  void changePrimaryContact(ContactType? primary) {
    emit(state.copyWith(primaryContact: primary ?? ContactType.none));
  }

  Future<void> saveBioChanges() async {
    final bioText = state.user?.userInfo?.bio ?? "";
     if (bioController.text.isNotEmpty && bioController.text != bioText) { //
      getIt<ProfileRepository>()
          .editBio(editModel: EditBioRequestModel(bio: bioController.text))
          .then((_) {
        emit(state.copyWith(loading: true, editedComplete: true));
      }).catchError((_) {
        emit(state.copyWith(loading: false, editedComplete: false));
      });
    } else {
       emit(state.copyWith(loading: true, editedComplete: true));
     }
  }

  Future<void> saveNameAndImageChanges() async {
    final firstName = state.user?.userInfo?.firstName ?? "";
    final lastName = state.user?.userInfo?.lastName ?? "";
    final middleName = state.user?.userInfo?.middleName ?? "";
    final fullName = "$firstName $lastName $middleName";

    if (nameController.text.isNotEmpty && nameController.text != fullName) {
      final allName = nameController.text.split(" ");
      final fName = allName.isNotEmpty ? allName.first : "";
      final lName = allName.length == 2 ? allName[1] : "";
      final mName = allName.length == 3 ? allName[2] : "";

      final editModel = EditNameRequestModel(
          firstName: fName, lastName: lName, middleName: mName);
      emit(state.copyWith(loading: true));
      await getIt<ProfileRepository>().editName(editModel: editModel).then((_) {
        emit(state.copyWith(loading: true, editedComplete: true));
      }).catchError((_) {
        emit(state.copyWith(loading: false, editedComplete: false));
      });
    } else {
      emit(state.copyWith(loading: true, editedComplete: true));
    }
  }

  Future<void> saveContactsChanges() async {
    final instagramLink = instagramController.text;
    final facebookLink = fbController.text;
    final whatsappLink = whatsAppController.text;
    final telegramLink = telegramController.text;

    final editModel = EditContactsRequestModel(
      instagramLink: instagramLink,
      telegramLink: telegramLink,
      facebookLink: facebookLink,
      whatsappLink: whatsappLink,
    );
    emit(state.copyWith(loading: true));
    await getIt<ProfileRepository>()
        .editContacts(editModel: editModel)
        .then((_) {
      emit(state.copyWith(loading: true, editedComplete: true));
    }).catchError((_) {
      emit(state.copyWith(loading: false, editedComplete: false));
    });
  }

  void pickImageFile(File file) {
    emit(state.copyWith(pickedFile: file));
    getIt<ProfileRepository>().attachProfileImage(file: file);
  }

  void resetComplete() {
    emit(state.copyWith(loading: false, editedComplete: false));
  }
}
