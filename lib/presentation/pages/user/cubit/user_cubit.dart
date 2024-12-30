import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.loading());

  Future<void> loadUser(UserModel user) async {
    await Future.delayed(const Duration(seconds: 1));
    emit(UserState.loaded(user: user));
  }
}
