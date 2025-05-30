import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/remote/auth_remote/auth_remote.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';
import 'package:more_hands/domain/models/user_credential_model/user_credential_model.dart';
import 'package:more_hands/more_hands_app.dart';

import '../../domain/models/login_response_model/login_response_model.dart';

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

  Future<bool> loginSocial(
    String socialToken, {
    String? referral,
    SocialAuthType type = SocialAuthType.google,
    String? familyName,
    String? givenName,
  }) async {
    final refCode =
        referral != null && referral.trim().isNotEmpty ? referral.trim() : null;

    late Future<LoginResponseModel?> loginFuture;
    if (type == SocialAuthType.apple) {
      loginFuture = getIt<AuthRemoteApi>().loginApple(
        socialToken,
        refCode: refCode,
        familyName: familyName,
        givenName: givenName,
      );
    } else if (type == SocialAuthType.google) {
      loginFuture =
          getIt<AuthRemoteApi>().loginGoogle(socialToken, refCode: refCode);
    }

    return await loginFuture.then((value) async {
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
    ]).whenComplete(() => appRouter.pushAndPopUntil(const AuthorizationRoute(),
        predicate: (route) => false));
  }

  Future<bool> refreshToken(String refreshToken) async {
    return await getIt<AuthRemoteApi>().refreshToken().then((value) async {
      if (value != null) {
        await getIt<TokenStorage>().saveToken(value);
      }
      return value != null;
    }).catchError((error) {
      debugPrint('Error: $error');
      return false;
    });
  }
}
