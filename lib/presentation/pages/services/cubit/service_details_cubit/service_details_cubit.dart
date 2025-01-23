import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/service_repository.dart';
import 'package:more_hands/domain/enums/currency_code.dart';
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
  Future<void> loadData(ServiceModel service, CategoryModel category) async {
    try {
      final measures = await getIt<ServiceRepository>().getServiceMeasures();
      final currencyModel =
          await getIt<ServiceRepository>().getCurrencyModel(CurrencyCode.ruble);
      emit(state.copyWith(
        service: service,
        category: category,
        selectedCurrencyCode: CurrencyCode.ruble,
        serviceMeasures: measures,
        selectedCurrency: currencyModel,
      ));
    } catch (_) {
      emit(state.copyWith(
        service: service,
        selectedCurrencyCode: CurrencyCode.ruble,
      ));
    }
  }

  void selectedServiceMeasure(ServiceMeasureModel newValue) {
    emit(state.copyWith(selectedMeasure: newValue));
    controller.collapse();
  }

  void changeCurrencyCode(CurrencyCode code) async {
    final oldCode = state.selectedCurrencyCode ?? CurrencyCode.ruble;
    emit(state.copyWith(selectedCurrencyCode: code));
    try {
      final currencyModel =
          await getIt<ServiceRepository>().getCurrencyModel(code);
      emit(state.copyWith(selectedCurrency: currencyModel));
    } catch (_) {
      emit(state.copyWith(selectedCurrencyCode: oldCode));
    }
  }

  void pickedFiles(List<File> files) {
    var picked = [...state.selectedFiles];
    picked.addAll(files);
    emit(state.copyWith(selectedFiles: picked));
  }

  void setSelectedLocations(List<LocationModel> selected) {
    if (selected.isNotEmpty) {
      emit(state.copyWith(selectedLocations: selected));
    }
  }

  Future<void> onSaved() async {
    UserServiceRequestModel requestModel = UserServiceRequestModel(
      servCatMCode: state.category?.catMCode,
      serviceMCode: state.service?.serviceInfo?.servMCode,
      servMeasMCode: state.selectedMeasure?.mCode.rawValue,
      addInfo: descriptionController.text,
      price: priceController.text.isNotEmpty
          ? num.tryParse(priceController.text)
          : 0,
      priceCurrency: state.selectedCurrency?.curCode.rawValue,
      locations: state.selectedLocations.map((e) => e.locName).toList(),
    );
    debugPrint(requestModel.toJson().toString());
    emit(state.copyWith(loading: true));
    await getIt<ServiceRepository>().addUserService(requestModel).then((_) {
      emit(state.copyWith(serviceAdded: true, loading: false));
    }).catchError((_) {
      emit(state.copyWith(loading: false));
    });
  }
}
