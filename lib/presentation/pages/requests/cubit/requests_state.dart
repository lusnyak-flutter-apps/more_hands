part of 'requests_cubit.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState.loading() = _RequestsState;

  const factory RequestsState.loaded({
    @Default("All") String selectedFilter,
    @Default(0) int selectedSection,
    @Default([]) List<dynamic> requests,
  }) = _RequestsLoadedState;
}