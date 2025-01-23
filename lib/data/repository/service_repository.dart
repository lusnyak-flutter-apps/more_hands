import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/currency_remote/currency_remote.dart';
import 'package:more_hands/data/remote/service_remote/service_remote.dart';
import 'package:more_hands/data/remote/user_services_remote/user_services_remote.dart';
import 'package:more_hands/domain/enums/currency_code.dart';
import 'package:more_hands/domain/models/currency_model/currency_model.dart';
import 'package:more_hands/domain/models/service_by_category_model/service_by_category_model.dart';
import 'package:more_hands/domain/models/service_means_model/service_measure_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_service_request_model/user_service_request_model.dart';

@lazySingleton
class ServiceRepository {

  Future<List<ServiceModel>> getServices({String txt = ""}) async {
    return await getIt<ServiceRemoteApi>()
        .getServices(txt)
        .then((onValue) => onValue ?? <ServiceModel>[])
        .catchError((_) => <ServiceModel>[]);
  }

  Future<List<ServiceByCategoryModel>> findServices({String txt = ""}) async {
    return await getIt<ServiceRemoteApi>()
        .findServices(txt)
        .then((onValue) => onValue ?? <ServiceByCategoryModel>[])
        .catchError((_) => <ServiceByCategoryModel>[]);
  }

  Future<List<ServiceMeasureModel>> getServiceMeasures() async {
    return await getIt<ServiceRemoteApi>()
        .getServiceMeasures()
        .then((onValue) => onValue ?? <ServiceMeasureModel>[])
        .catchError((e) {
          debugPrint("e.toString()");
          debugPrint(e.toString());
      return <ServiceMeasureModel>[];
    });
  }

  Future<CurrencyModel?> getCurrencyModel(CurrencyCode code) async
    =>  await getIt<CurrencyRemoteApi>()
        .getByCode(code.rawValue ?? "RUB").then((onValue)=>onValue)
         .catchError((e) {
           debugPrint(e.toString());
        return null;
      } );

  Future<void> addUserService(UserServiceRequestModel param) async =>
      await getIt<UserServicesRemoteApi>().addUserService(data: param);

}
