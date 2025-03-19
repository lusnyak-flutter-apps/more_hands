import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/local/current_location/current_location_storage.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_model/user_model.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  final TextEditingController searchController = TextEditingController();

  Future<void> getData() async {
    final location = await getIt<CurrentLocationStorage>().readLocation();
    emit(state.copyWith(loading: true, selectedLocation: location),);
    Future.wait([
      getServices(),
      getUsersBySearchAndLocation(),
    ]).whenComplete(() {
      emit(state.copyWith(loading: false));
    });
  }

  Future<void> getServices() async {
    try {
      final tokenData = await getIt<TokenStorage>().readToken();
      final locationId = state.selectedLocation?.id ?? tokenData?.closestLoc ?? 0;

      final services = await getIt<ServiceRepository>().getServices(loc: [locationId]);
      emit(state.copyWith(services: services ,loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> getUsersBySearchAndLocation({bool showLoading = true}) async {
    emit(state.copyWith(loading: showLoading));
    try {
      final tokenData = await getIt<TokenStorage>().readToken();
      final locationId = state.selectedLocation?.id ?? tokenData?.closestLoc ?? 0;

      final users = await getIt<UsersRepository>().findUsersByLocAndText(txt: searchController.text,
          locId: locationId);
      emit(state.copyWith(users: users,loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> getUsersByServiceAndLocation({bool showLoading = true}) async {
    emit(state.copyWith(loading: showLoading));
    try {
      final tokenData = await getIt<TokenStorage>().readToken();
      final locationId = state.selectedLocation?.id ?? tokenData?.closestLoc ?? 0;

      final users = await getIt<UsersRepository>().findUsersByLocAndServices(
          locId: locationId, service: state.selectedServiceId);
      emit(state.copyWith(users: users,loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> changeService(ServiceModel? serviceModel) async {
    emit(state.copyWith(
        selectedServiceId: serviceModel?.serviceInfo?.servId ?? -1));
    if(serviceModel != null) {
      searchController.clear();
      await getUsersByServiceAndLocation();
    } else {
      await getUsersBySearchAndLocation();
    }
  }

  Future<void> refresh() async {
    emit(state.copyWith(  loading: false));
    if(state.selectedServiceId != -1) {
      searchController.clear();
      await getUsersByServiceAndLocation(showLoading: false);
    } else {
      await getUsersBySearchAndLocation(showLoading: false);
    }
  }

  Future<void> setSelectedLocations(LocationModel selected) async {
    emit(state.copyWith(selectedLocation: selected, selectedServiceId: -1));
    await getServices();
    if(state.selectedServiceId != -1) {
      searchController.clear();
      await getUsersByServiceAndLocation();
    } else {
      await getUsersBySearchAndLocation();
    }
  }

  Future<void> onEditComplete() async {
    emit(state.copyWith(selectedServiceId: -1));
    await getUsersBySearchAndLocation();
  }
}
