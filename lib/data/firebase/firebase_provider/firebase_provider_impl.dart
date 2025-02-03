import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/firebase/firebase_options.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';

import 'firebase_provider.dart';

typedef FirebaseUserCredential = UserCredential;

@Injectable(as: FirebaseProvider)
class FirebaseProviderImpl implements FirebaseProvider {

  @override
  Future<FirebaseApp> initializeApp() async {
    return await Firebase.initializeApp(
      name: "Morehandsapp",
      options: DefaultFirebaseOptions.currentPlatform,
    ).then((onValue) {
      debugPrint(onValue.options.appId);
      return onValue;
    });
  }

  @override
  Future<FirebaseUserCredential?> authSocialType(SocialAuthType authType) async {
    await FirebaseAuth.instance.signOut();
    AuthProvider provider = switch (authType) {
      SocialAuthType.apple => AppleAuthProvider(),
      SocialAuthType.facebook => FacebookAuthProvider(),
      SocialAuthType.google => GoogleAuthProvider(),
    };
    try {
      final userCredential = await FirebaseAuth.instance.signInWithProvider(provider);
      debugPrint(userCredential.credential?.asMap().toString());
      debugPrint(userCredential.user?.email);
      debugPrint(userCredential.user?.displayName);
      debugPrint(userCredential.user?.phoneNumber);
      debugPrint(userCredential.user?.photoURL);
      return userCredential;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
