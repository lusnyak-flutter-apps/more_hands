import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/repository.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

part 'select_location_cubit.freezed.dart';

part 'select_location_state.dart';

@injectable
class SelectLocationCubit extends Cubit<SelectLocationState> {
  SelectLocationCubit() : super(const SelectLocationState());

  Future<void> findClosestLocations({String name = "", bool singleSelect = false}) async {
    if (state.loading) return;
    emit(state.copyWith(loading: true, singleSelect: singleSelect));
    try {
      final locations =
          await getIt<LocationRepository>().findUsersByLocAndText(txt: name);
      emit(state.copyWith(locations: locations, loading: false));
    } catch (e) {
      debugPrint(e.toString());
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
