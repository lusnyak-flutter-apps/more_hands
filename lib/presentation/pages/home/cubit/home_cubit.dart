import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  getData() {
    emit(state.copyWith(loading: true));
    Future.wait([
      getServices(),
      getUsers(),
    ]).whenComplete(() {
      emit(state.copyWith(loading: false));
    });
  }

  Future<void> getServices() async {
    await getIt<ServiceRepository>().getServices().then((onValue) {
      emit(state.copyWith(services: onValue));
    });
  }

  Future<void> getUsers() async {
    await getIt<UsersRepository>().findUsersByLocAndText(locId: state.selectedLocation?.id ?? 0).then((users) {
      emit(state.copyWith(users: users));
    });
  }

  void changeService(ServiceModel? serviceModel) {
    emit(state.copyWith(
        selectedServiceId: serviceModel?.serviceInfo?.servId ?? -1));
  }

  Future<void> setSelectedLocations(LocationModel selected) async {
    emit(state.copyWith(selectedLocation: selected));
    await getUsers();
  }
}
