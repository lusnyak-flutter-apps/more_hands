import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/service_repository.dart';
import 'package:more_hands/domain/models/service_by_category_model/service_by_category_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/presentation/pages/services/view_model/service_list_view_model.dart';

part 'service_list_cubit.freezed.dart';

part 'service_list_state.dart';

@injectable
class ServiceListCubit extends Cubit<ServiceListState> {
  ServiceListCubit() : super(const ServiceListState());
  final TextEditingController searchController = TextEditingController();

  Future<void> findServices() async {
    emit(state.copyWith(loading: true));
    try {
      final services = await getIt<ServiceRepository>()
          .findServices(txt: searchController.text);
      // List<ServiceByCategoryModel> viewModels = <ServiceByCategoryModel>[];
      // Map<int, List<ServiceModel>> categories = groupBy(services, (service) => service.catId);
      // for(var item in categories.entries){
      //   viewModels.add(ServiceByCategoryModel(category: item.value.first, services: item.value));
      // }
      emit(state.copyWith(services: services, loading: false));
    } catch (e) {
      emit(state.copyWith(services: <ServiceByCategoryModel>[], loading: false));
    }
  }

  void onExpansionChanged(int index, bool isExpanded) {
    var expanded = [...state.expanded];
    if (isExpanded) {
      expanded.add(index);
    } else {
      expanded.remove(index);
    }
    emit(state.copyWith(expanded: expanded));
  }

  void onChangeSelected(ServiceModel serviceModel) {
    emit(state.copyWith(selected: serviceModel));
  }
}
