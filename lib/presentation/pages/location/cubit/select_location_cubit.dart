import 'package:flutter/cupertino.dart';
import 'package:location/location.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/local/preferences/preferences.dart';
import 'package:more_hands/data/repository/repository.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

part 'select_location_cubit.freezed.dart';

part 'select_location_state.dart';

@injectable
class SelectLocationCubit extends Cubit<SelectLocationState> {
  SelectLocationCubit() : super(const SelectLocationState());
  TextEditingController searchController = TextEditingController();

  Location location = Location();

  Future<void> findClosestLocations({
    bool singleSelect = false,
    int? initialSelected,
  }) async {
    if (state.loading) return;
    emit(state.copyWith(loading: true, singleSelect: singleSelect));
    try {
      final locations = await getIt<LocationRepository>()
          .findClosestLocations(txt: searchController.text);
      if (initialSelected != null) {
        final selected =
            locations.where((l) => l.id == initialSelected).firstOrNull;
        if (selected != null) {
          emit(state.copyWith(
              locations: locations,
              loading: false,
              selectedLocations: [selected]));
        } else {
          emit(state.copyWith(locations: locations, loading: false));
        }
      } else {
        emit(state.copyWith(locations: locations, loading: false));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> findMe() async {
    final locationData = await location.getLocation();
    if (locationData.longitude != null && locationData.latitude != null) {
      Preferences.instance.latitude = locationData.latitude!;
      Preferences.instance.longitude = locationData.longitude!;
      final myLocation = await getIt<LocationRepository>().whereAmI();
      if (myLocation != null) {
        emit(state.copyWith(myLocation: myLocation));
        selectLocation(myLocation);
      }
    }
  }

  Future<void> selectLocation(LocationModel value) async {
    if (state.loading) return;

    if (state.singleSelect) {
      emit(state.copyWith(selectedLocations: [value]));
    } else {
      var selected = [...state.selectedLocations];
      var selectedIds = selected.map((e) => e.id).toList();
      if (selectedIds.contains(value.id)) {
        selected.removeWhere((e) => e.id == value.id);
      } else {
        selected.add(value);
      }
      emit(state.copyWith(selectedLocations: selected));
    }
  }

  Future<void> onEditingComplete() async {
    await findClosestLocations(
      singleSelect: state.singleSelect,
      initialSelected: state.selectedLocations.firstOrNull?.id,
    );
  }
}
