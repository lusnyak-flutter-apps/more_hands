import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/repository.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

part 'select_location_cubit.freezed.dart';

part 'select_location_state.dart';

@injectable
class SelectLocationCubit extends Cubit<SelectLocationState> {
  SelectLocationCubit() : super(const SelectLocationState());

  Future<void> findClosestLocations(
      {String name = "",
      bool singleSelect = false,
      int? initialSelected}) async {
    if (state.loading) return;
    emit(state.copyWith(loading: true, singleSelect: singleSelect));
    try {
      final locations =
          await getIt<LocationRepository>().findClosestLocations(txt: name);
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
    final myLocation = await getIt<LocationRepository>().whereAmI();
    if (myLocation != null) {
      emit(state.copyWith(myLocation: myLocation));
      selectLocation(myLocation);
    }
  }

  Future<void> selectLocation(LocationModel value) async {
    if (state.loading) return;

    var selected = [...state.selectedLocations];
    var selectedIds = selected.map((e) => e.id).toList();

    if (state.singleSelect) {
      selected = [value];
    } else {
      if (selectedIds.contains(value.id)) {
        selected.removeWhere((e) => e.id == value.id);
      } else {
        selected.add(value);
      }
    }
    emit(state.copyWith(selectedLocations: selected));
  }
}
