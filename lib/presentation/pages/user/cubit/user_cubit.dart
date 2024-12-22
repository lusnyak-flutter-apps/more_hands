import 'package:more_hands/core/core.dart';

part 'user_cubit.freezed.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState.loading());
}
