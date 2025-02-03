import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/local/social_auth/social_auth_manager.dart';
import 'package:more_hands/data/local/social_auth/social_auth_model.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@Injectable(as: SocialAuthManager)
class SocialAuthManagerImpl implements SocialAuthManager {
  final googleSignIn = GoogleSignIn(
    scopes: <String>[
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
  );

  Future<SocialAuthModel?> _loginApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      webAuthenticationOptions: null,
    );
    debugPrint("Apple credentials");
    debugPrint("credential.identityToken - ${credential.identityToken}");
    debugPrint(
        "credential.authorizationCode - ${credential.authorizationCode}");
    debugPrint("credential.userIdentifier - ${credential.userIdentifier}");
    debugPrint("credential.email - ${credential.email}");
    debugPrint("credential.familyName - ${credential.familyName}");
    debugPrint("credential.givenName - ${credential.givenName}");
    debugPrint("credential.state - ${credential.state}");
    debugPrint("------------");

    return SocialAuthModel.fromApple(credential);
  }

  Future<SocialAuthModel?> _loginFacebook() async {
    await FacebookAuth.instance.logOut();
    final LoginResult result =
        await FacebookAuth.instance.login().catchError((e) {
      debugPrint("++++++++++++++++");
      debugPrint(e.toString());
      debugPrint("-----------------");
      throw e;
    });
    debugPrint(result.status.toString());
    if (result.status == LoginStatus.success) {
      AccessToken? accessToken = result.accessToken;
      final userData = await FacebookAuth.instance.getUserData(fields: "email");
      String? email = userData.containsKey("email") ? userData["email"] : null;
      return SocialAuthModel.fromFacebook(accessToken as ClassicToken, email);
    }
    return null;
  }

  Future<SocialAuthModel?> _loginGoogle() async {
    await googleSignIn.signOut();
    return await googleSignIn.signIn().then((account) async {
      GoogleSignInAuthentication? googleAuth = await account?.authentication;
      return SocialAuthModel.fromGoogle(account, googleAuth);
    }).catchError((e) {
      debugPrint(e.toString());
      throw e;
    });
  }

  @override
  Future<SocialAuthModel?> signIn(SocialAuthType authType) {
    return switch (authType) {
      SocialAuthType.apple => _loginApple(),
      SocialAuthType.facebook => _loginFacebook(),
      SocialAuthType.google => _loginGoogle(),
    };
  }
}
