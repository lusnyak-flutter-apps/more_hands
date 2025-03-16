part of 'service_details_cubit.dart';

@freezed
class ServiceDetailsState with _$ServiceDetailsState {
  const factory ServiceDetailsState({
    @Default(false) bool loading,
    @Default(false) bool serviceAdded,
    bool? validated,
    ServiceModel? service,
    CategoryModel? category,
    CurrencyModel? selectedCurrency,
    @Default(<CurrencyModel>[])List<CurrencyModel> currencies,
    @Default(<ServiceMeasureModel>[]) List<ServiceMeasureModel> serviceMeasures,
    ServiceMeasureModel? selectedMeasure,
    @Default(<File>[]) List<File> selectedFiles,
    @Default(ServiceDetailsMode.add) ServiceDetailsMode mode,
    @Default(<LocationModel>[]) List<LocationModel> selectedLocations,
    }) = _ServiceDetailsState;
}

enum ServiceDetailsMode {
  add, edit
}