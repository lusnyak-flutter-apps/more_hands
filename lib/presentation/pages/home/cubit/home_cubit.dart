import 'package:flutter/cupertino.dart';
import 'package:location/location.dart';
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

  final TextEditingController searchController = TextEditingController();

  Location location =  Location();

  bool _serviceEnabled = false;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  Future<void> getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    if(_locationData?.longitude != null && _locationData?.latitude != null) {
      Preferences.instance.latitude = _locationData!.longitude!;
      Preferences.instance.longitude = _locationData!.longitude!;
    }
  }

  void getData() {
    emit(state.copyWith(loading: true));
    Future.wait([
      getServices(),
      getUsersBySearchAndLocation(),
    ]).whenComplete(() {
      emit(state.copyWith(loading: false));
    });
  }

  Future<void> getServices() async {
    await getIt<ServiceRepository>().getServices().then((onValue) {
      emit(state.copyWith(services: onValue));
    });
  }

  Future<void> getUsersBySearchAndLocation() async {
    emit(state.copyWith(loading: true));
    try {
      final tokenData = await getIt<TokenStorage>().readToken();
      final locationId = state.selectedLocation?.id ?? tokenData?.closestLoc ?? 0;


      final users = await getIt<UsersRepository>().findUsersByLocAndText(
          locId: locationId);
      emit(state.copyWith(users: users,loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> getUsersByServiceAndLocation() async {
    emit(state.copyWith(loading: true));
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

  Future<void> setSelectedLocations(LocationModel selected) async {
    emit(state.copyWith(selectedLocation: selected));
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
