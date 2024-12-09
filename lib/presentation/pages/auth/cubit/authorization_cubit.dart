import 'package:more_hands/core/core.dart';

part 'authorization_cubit.freezed.dart';

part 'authorization_state.dart';

@injectable
class AuthorizationCubit extends Cubit<AuthorizationState> {
  AuthorizationCubit() : super(const AuthorizationState.initial());
}
