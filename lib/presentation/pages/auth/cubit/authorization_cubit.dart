import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/local/social_auth/social_auth_manager.dart';
import 'package:more_hands/data/local/social_auth/social_auth_model.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';
import 'package:more_hands/domain/models/user_credential_model/user_credential_model.dart';
import 'package:uikit/uikit.dart';

part 'authorization_cubit.freezed.dart';

part 'authorization_state.dart';

@injectable
class AuthorizationCubit extends Cubit<AuthorizationState> {
  AuthorizationCubit() : super(const AuthorizationState.initial());
  TextEditingController referralController = TextEditingController();
  final List<UserCredentialModel> demoUsers = [
    const UserCredentialModel(
        username: 'd.s.koksharov', password: '123', name: "Dima"),
    const UserCredentialModel(username: 'plotn', password: '123', name: 'Yura'),
    const UserCredentialModel(
        username: 'vasiliy', password: '123', name: 'Vasiliy'),
    const UserCredentialModel(
        username: 'stanislav', password: '123', name: 'Stanislav'),
    const UserCredentialModel(
        username: 'lusine', password: '123', name: 'Lusine'),
  ];

  Future<void> login(UserCredentialModel user) async {
    await getIt<AuthRepository>().login(user).then((value) {
      if (value) {
        emit(const AuthorizationState.authorized(null));
      } else {
        emit(const AuthorizationState.unauthorized());
      }
    });
  }

  Future<void> loginViaSocial(
      BuildContext context, SocialAuthType authType) async {
    final credential = await getIt<SocialAuthManager>().signIn(authType);
    if (credential?.idToken != null) {
      await getIt<AuthRepository>()
          .loginSocial(credential!.idToken!, referral: referralController.text)
          .then((value) async {
        if (value) {
          final token = await FCMService.instance.firebaseToken;
          if (token != null) {
            await getIt<ProfileRepository>().setFirebaseToken(token: token);
            if (context.mounted) {
              context.showSnackBar(
                  message: "Push token: $token",
                  duration: const Duration(seconds: 5));
            }
          }
          emit(AuthorizationState.authorized(credential));
        } else {
          emit(const AuthorizationState.unauthorized());
        }
      });
      // debugPrint(credential.toJson().toString());
      // emit(AuthorizationState.authorized(credential));
      // return;
    }
  }
}
