import 'package:more_hands/data/firebase/firebase_provider/firebase_provider_impl.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';


abstract class FirebaseProvider {
  Future<void> initializeApp();
  Future<FirebaseUserCredential?> authSocialType(SocialAuthType authType);
}
