
part of 'select_location_cubit.dart';

@freezed
class SelectLocationState with _$SelectLocationState {
  const factory SelectLocationState({
    @Default(false) bool loading,
    @Default(false) bool singleSelect,
    @Default([]) List<LocationModel> locations,
    @Default([]) List<LocationModel> selectedLocations,
  }) = _SelectLocationState;
}

