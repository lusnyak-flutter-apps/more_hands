import 'package:more_hands/data/local/social_auth/social_auth_model.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';

abstract class SocialAuthManager {
  Future<SocialAuthModel?> signIn(SocialAuthType authType);
}
