import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/local/preferences/preferences.dart';
import 'package:more_hands/data/local/token_storage/token_storage.dart';
import 'package:more_hands/data/remote/auth_remote/auth_remote.dart';
import 'package:more_hands/data/remote/edit_profile_remote/edit_profile_remote.dart';
import 'package:more_hands/data/remote/storage_remote/storage_remote.dart';
import 'package:more_hands/data/remote/user_remote/user_remote.dart';
import 'package:more_hands/domain/models/edit_bio_request_model/edit_bio_request_model.dart';
import 'package:more_hands/domain/models/edit_contacts_request_model/edit_contacts_request_model.dart';
import 'package:more_hands/domain/models/edit_name_request_model/edit_name_request_model.dart';
import 'package:more_hands/domain/models/firebase_token/firebase_token_request_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';
import 'package:more_hands/more_hands_app.dart';

@lazySingleton
class ProfileRepository {
  Future<UserModel?> getCurrentUserInfo() async =>
      await getIt<UserRemoteApi>().getCurrentUserInfo();

  Future<File?> getUserImage(String path) async {
    return await getIt<StorageRemoteApi>()
        .downloadFileByPath(path)
        .then((response) async {
      var file = File('image.jpg');
      await file.writeAsBytes(response.data);
      debugPrint("File downloaded successfully.");
      return file;
    });
  }

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

  Future<void> logout() async {
    await Future.delayed(const Duration(seconds: 2), localLogout);
  }

  Future<void> localLogout() async {
    await Future.wait([
      Preferences.instance.deleteAll(),
      getIt<TokenStorage>().deleteToken(),
    ]).whenComplete(() => appRouter.pushAndPopUntil(const AuthorizationRoute(),
        predicate: (route) => false));
  }


  Future<void> deleteAccount() async {
    await getIt<AuthRemoteApi>().deleteAccount().then((_) async {
      await localLogout();
    });
  }

  Future<void> setFirebaseToken({
    required String token,
  }) async =>
      await getIt<EditProfileRemoteApi>().setFirebaseToken(
        data: FirebaseTokenRequestModel(firebaseToken: token),
      );
}
