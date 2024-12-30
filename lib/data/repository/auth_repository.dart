import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/remote/auth_remote/auth_remote.dart';
import 'package:more_hands/domain/models/user_credential_model/user_credential_model.dart';
import 'package:more_hands/more_hands_app.dart';

@lazySingleton
class AuthRepository {
  Future<bool> login(UserCredentialModel userCredential) async {
    return await getIt<AuthRemoteApi>()
        .login(userCredential.username, userCredential.password)
        .then((value) async {
      if (value != null) {
        await getIt<TokenStorage>().saveToken(value);
      }
      return value != null;
    }).catchError((error) {
      debugPrint('Error: $error');
      return false;
    });
  }

  Future<void> localLogout() async {
    await Future.wait([
      getIt<TokenStorage>().deleteToken(),
    ]).whenComplete(() => appRouter.pushAndPopUntil(const TestAuthRoute(),
        predicate: (route) => false));
  }
}
