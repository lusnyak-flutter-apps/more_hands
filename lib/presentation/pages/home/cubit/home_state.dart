part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {

  const factory HomeState({
    @Default(false) bool loading,
    @Default(-1) int selectedServiceId,
    @Default(<UserModel>[]) List<UserModel> users,
    @Default(<ServiceModel>[]) List<ServiceModel> services,
    LocationModel? selectedLocation,
  }) = _HomeState;
}