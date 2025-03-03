import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.loading());

  Future<void> loadUser(int userId) async {
    await getIt<UsersRepository>().getUserInfo(userId: userId).then((user){
      if(user != null) {
        emit(UserState.loaded(user: user));
      }
    });
  }
}
