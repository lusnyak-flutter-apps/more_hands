import 'dart:io';

import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/edit_profile_remote/edit_profile_remote.dart';
import 'package:more_hands/data/remote/user_remote/user_remote.dart';
import 'package:more_hands/domain/models/edit_bio_request_model/edit_bio_request_model.dart';
import 'package:more_hands/domain/models/edit_contacts_request_model/edit_contacts_request_model.dart';
import 'package:more_hands/domain/models/edit_name_request_model/edit_name_request_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

@lazySingleton
class ProfileRepository {
  Future<UserModel?> getCurrentUserInfo() async =>
      await getIt<UserRemoteApi>().getCurrentUserInfo();

  Future<dynamic> getUserImage(String path) async =>
      await getIt<UserRemoteApi>().getUserProfileImage(path);

  Future<void> editName({
    required EditNameRequestModel editModel,
  }) async =>
      await getIt<EditProfileRemoteApi>().editName(data: editModel);

  Future<void> editContacts({
    required EditContactsRequestModel editModel,
  }) async =>
      await getIt<EditProfileRemoteApi>().editContacts(data: editModel);

  Future<void> editBio({
    required EditBioRequestModel editModel,
  }) async =>
      await getIt<EditProfileRemoteApi>().editBio(data: editModel);

  Future<void> attachProfileImage({
    required File file,
  }) async {
    final type = file.path.split("/").last.split(".").last;
    final name = file.path.split("/").last.split(".").first;

    await getIt<EditProfileRemoteApi>()
        .attachProfileImage(file: file, attachType: type, attachName: name);
  }
}
