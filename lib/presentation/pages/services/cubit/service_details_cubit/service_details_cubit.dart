import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/service_repository.dart';
import 'package:more_hands/domain/models/category_model/category_model.dart';
import 'package:more_hands/domain/models/currency_model/currency_model.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';
import 'package:more_hands/domain/models/service_means_model/service_measure_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_service_request_model/user_service_request_model.dart';

part 'service_details_cubit.freezed.dart';

part 'service_details_state.dart';

@injectable
class ServiceDetailsCubit extends Cubit<ServiceDetailsState> {
  ServiceDetailsCubit() : super(const ServiceDetailsState());
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final ExpansionTileController controller = ExpansionTileController();

  Future<void> loadData({
    required ServiceModel service,
    required CategoryModel category,
    ServiceDetailsMode mode = ServiceDetailsMode.add,
  }) async {
    try {
      final currencies = await getIt<ServiceRepository>().getCurrencies();
      final measures = await getIt<ServiceRepository>().getServiceMeasures();
      // final currencyModel =
      //     await getIt<ServiceRepository>().getCurrencyModel("RUB");

      if(mode == ServiceDetailsMode.edit) {
        priceController.text = service.serviceAdditionalInfo?.price != null ? service.serviceAdditionalInfo!.price!.toString() : "";
        descriptionController.text =   service.serviceAdditionalInfo?.addInfo ?? "";
        priceController.text = service.serviceAdditionalInfo?.price != null ? service.serviceAdditionalInfo!.price!.toString() : "";
        final currencyModel = currencies.firstWhereOrNull((c)=>c.curCode == service.serviceAdditionalInfo?.priceCurrency);
        final measureModel = measures.firstWhereOrNull((m)=>m.mCode == service.serviceAdditionalInfo?.measureCode);
        final locations = service.locations.map((l)=>LocationModel(id: l.usfLocationId, locName: l.locName)).toList();
        emit(state.copyWith(
          service: service,
          currencies: currencies,
          category: category,
          serviceMeasures: measures,
          mode: mode,
          selectedLocations: locations,
          selectedCurrency: currencyModel,
          selectedMeasure: measureModel,
        ));
      }
      if(mode == ServiceDetailsMode.add) {
        emit(state.copyWith(
          service: service,
          currencies: currencies,
          category: category,
          serviceMeasures: measures,
          mode: mode,
          selectedCurrency: currencies.firstOrNull,
        ));
      } 
    } catch (_) {
      emit(state.copyWith(
        service: service,
      ));
    }
  }

  void selectedServiceMeasure(ServiceMeasureModel newValue) {
    emit(state.copyWith(selectedMeasure: newValue));
    controller.collapse();
  }

  void changeCurrencyCode(CurrencyModel currency) async {
    emit(state.copyWith(selectedCurrency: currency));
  }

  void pickedFiles(List<File> files) {
    var picked = [...state.selectedFiles];
    picked.addAll(files);
    emit(state.copyWith(selectedFiles: picked));
  }

  void removeFile(int index) {
    var picked = [...state.selectedFiles];
    picked.removeAt(index);
    emit(state.copyWith(selectedFiles: picked));
  }

  void setSelectedLocations(List<LocationModel> selected) {
    if (selected.isNotEmpty) {
      emit(state.copyWith(selectedLocations: selected));
    }
  }

  Future<void> onSaved() async {
    final validated = state.selectedLocations.isNotEmpty &&
        state.selectedCurrency != null &&
        (priceController.text.isNotEmpty &&
            num.tryParse(priceController.text) != null) &&
        state.selectedMeasure != null &&
        descriptionController.text.isNotEmpty &&
        state.selectedFiles.isNotEmpty;
    emit(state.copyWith(validated: validated));
    if (validated) {
      UserServiceRequestModel requestModel = UserServiceRequestModel(
        servCatMCode: state.category?.catMCode,
        serviceMCode: state.service?.serviceInfo?.servMCode,
        servMeasMCode: state.selectedMeasure?.mCode.rawValue,
        addInfo: descriptionController.text,
        price: priceController.text.isNotEmpty
            ? num.tryParse(priceController.text)
            : 0,
        priceCurrency: state.selectedCurrency?.curCode,
        locations: state.selectedLocations.map((e) => e.locName ?? "").toList(),
      );
      debugPrint(requestModel.toJson().toString());
      emit(state.copyWith(loading: true, validated: null));
      try {
        int id = await getIt<ServiceRepository>().addUserService(requestModel);
        if (state.selectedFiles.isNotEmpty) {
          await getIt<ServiceRepository>()
              .attachServiceFiles(state.selectedFiles, id);
          emit(state.copyWith(serviceAdded: true, loading: false));
        } else {
          emit(state.copyWith(
              serviceAdded: true, loading: false, validated: null));
        }
      } catch (e) {
        debugPrint(e.toString());
        emit(state.copyWith(loading: false, validated: null));
      }
    } else {
      emit(state.copyWith(
        validated: null,
        loading: false,
      ));
    }
  }
}
