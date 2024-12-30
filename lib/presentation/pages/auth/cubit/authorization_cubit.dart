import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
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
  ];

  Future<void> login(UserCredentialModel user) async {
    await getIt<AuthRepository>().login(user).then((value) {
      if (value) {
        emit(const AuthorizationState.authorized());
      } else {
        emit(const AuthorizationState.unauthorized());
      }
    });
  }
}
