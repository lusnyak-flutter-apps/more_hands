part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeState;

  const factory HomeState.loaded({
    @Default("All") String selectedType,
    @Default([]) List<dynamic> users,
  }) = _HomeLoadedState;
}