import 'package:flutter/widgets.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/local/social_auth/social_auth_manager.dart';
import 'package:more_hands/data/local/social_auth/social_auth_model.dart';
import 'package:more_hands/domain/enums/social_auth_type.dart';
import 'package:more_hands/domain/models/user_credential_model/user_credential_model.dart';

part 'authorization_cubit.freezed.dart';

part 'authorization_state.dart';

@injectable
class AuthorizationCubit extends Cubit<AuthorizationState> {
  AuthorizationCubit() : super(const AuthorizationState.initial());

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

  Future<void> loginViaSocial(SocialAuthType authType) async {
    final credential = await getIt<SocialAuthManager>().signIn(authType);
    if (credential != null) {
      debugPrint(credential.toJson().toString());
      emit(AuthorizationState.authorized(credential));
      return;
    }
  }
}
