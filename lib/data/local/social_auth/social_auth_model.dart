import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SocialAuthModel {
  String? id;
  String? oauthProvider;
  String? accessToken;
  String? idToken;
  String? serverAuthCode;
  String? email;
  String? displayName;
  String? photoUrl;
  String? name;
  String? familyName;

  SocialAuthModel({
    required this.id,
    this.accessToken,
    this.displayName,
    this.idToken,
    this.photoUrl,
    this.serverAuthCode,
    this.oauthProvider = "oauth-provider",
    this.email,
    this.name,
    this.familyName,
  });

  factory SocialAuthModel.fromFacebook(ClassicToken? account, String? fbEmail) {
    return SocialAuthModel(
        id: account?.userId,
        accessToken: account?.tokenString,
        oauthProvider: "facebook",
        email: fbEmail ?? "");
  }

  factory SocialAuthModel.fromGoogle(
    GoogleSignInAccount? credential,
    GoogleSignInAuthentication? auth,
  ) {
    return SocialAuthModel(
      id: credential?.id,
      accessToken: auth?.accessToken,
      idToken: auth?.idToken,
      displayName: credential?.displayName,
      serverAuthCode: credential?.serverAuthCode,
      oauthProvider: "google",
      email: credential?.email ?? "",
      photoUrl: credential?.photoUrl,
    );
  }

  factory SocialAuthModel.fromApple(AuthorizationCredentialAppleID credential) {
    return SocialAuthModel(
      id: credential.userIdentifier,
      accessToken: credential.identityToken,
      oauthProvider: "apple",
      email: credential.email ?? "",
      name: credential.givenName,
      familyName: credential.familyName,
    );
  }

  /// convert this instance to one Map
  Map<String, dynamic> toJson() => {
        "oauthProvider": oauthProvider,
        "id": id,
        "accessToken": accessToken,
        "idToken": idToken,
        "displayName": displayName,
        "serverAuthCode": serverAuthCode,
        "email": email,
        "photoUrl": photoUrl
      };
}
