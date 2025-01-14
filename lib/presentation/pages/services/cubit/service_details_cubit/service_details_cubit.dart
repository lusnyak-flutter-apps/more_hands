import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/repository/service_repository.dart';
import 'package:more_hands/domain/enums/currency_code.dart';
import 'package:more_hands/domain/models/currency_model/currency_model.dart';
import 'package:more_hands/domain/models/service_means_model/service_measure_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';

part 'service_details_cubit.freezed.dart';

part 'service_details_state.dart';

@injectable
class ServiceDetailsCubit extends Cubit<ServiceDetailsState> {
  ServiceDetailsCubit() : super(const ServiceDetailsState());
  final TextEditingController priceController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  Future<void> loadData(ServiceModel service) async {
    try {
      final measures = await getIt<ServiceRepository>().getServiceMeasures();
      final currencyModel =
          await getIt<ServiceRepository>().getCurrencyModel(CurrencyCode.ruble);
      emit(state.copyWith(
        service: service,
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

  void pickedFiles(List<File> files){
    var picked = [...state.selectedFiles];
    picked.addAll(files);
    emit(state.copyWith(selectedFiles: picked));
  }
}
