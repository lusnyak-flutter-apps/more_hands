import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.loading());

  void getUsers() {
    getIt<UsersRepository>().findUsersByLocAndText().then((users) {
      emit(HomeState.loaded(selectedType: "Все", users: users));
    }).catchError((_){
      emit(const HomeState.loaded(selectedType: "Все", users: <UserModel>[]));
    });
  }

  void changeType(String type) {
    if(state is _HomeLoadedState) {
      emit((state as _HomeLoadedState).copyWith(selectedType: type));
    } else {
      emit(HomeState.loaded(selectedType: type, users: <UserModel>[]));
    }
  }
}
