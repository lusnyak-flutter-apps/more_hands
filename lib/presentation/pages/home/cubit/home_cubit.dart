import 'package:more_hands/core/core.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.loading());

  void getUsers() {
     emit(const HomeState.loaded(selectedType: "All", users: [null, null, null]));
  }

  void changeType(String type) {
    if(state is _HomeLoadedState) {
      emit((state as _HomeLoadedState).copyWith(selectedType: type));
    } else {
      emit(HomeState.loaded(selectedType: type, users: [null, null, null]));
    }
  }
}
