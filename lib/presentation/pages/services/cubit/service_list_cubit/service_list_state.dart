part of 'service_list_cubit.dart';

@freezed
class ServiceListState with _$ServiceListState {
  const factory ServiceListState({
    @Default(false) bool loading,
    ServiceModel? selected,
    CategoryModel? category,
    @Default(<ServiceByCategoryModel>[]) List<ServiceByCategoryModel> services,
    @Default(<int>[]) List<int> expanded,
  }) = _ServiceListState;
}
