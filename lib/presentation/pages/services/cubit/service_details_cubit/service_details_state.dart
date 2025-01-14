part of 'service_details_cubit.dart';

@freezed
class ServiceDetailsState with _$ServiceDetailsState {
  const factory ServiceDetailsState({
    @Default(false) bool loading,
      ServiceModel? service,
    @Default(CurrencyCode.ruble) CurrencyCode? selectedCurrencyCode,
    CurrencyModel? selectedCurrency,
    @Default(<ServiceMeasureModel>[]) List<ServiceMeasureModel> serviceMeasures,
    ServiceMeasureModel? selectedMeasure,
    @Default(<File>[]) List<File> selectedFiles
    }) = _ServiceDetailsState;
}
