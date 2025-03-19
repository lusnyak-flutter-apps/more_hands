import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/currency_remote/currency_remote.dart';
import 'package:more_hands/data/remote/service_remote/service_remote.dart';
import 'package:more_hands/data/remote/user_services_remote/user_services_remote.dart';
import 'package:more_hands/domain/models/currency_model/currency_model.dart';
import 'package:more_hands/domain/models/service_by_category_model/service_by_category_model.dart';
import 'package:more_hands/domain/models/service_means_model/service_measure_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';
import 'package:more_hands/domain/models/user_service_request_model/user_service_request_model.dart';

@lazySingleton
class ServiceRepository {
  Future<List<ServiceModel>> getServices(
      {String txt = "", List<int> loc = const <int>[]}) async {
    return await getIt<ServiceRemoteApi>()
        .getServices(true, txt, loc)
        .then((onValue) => onValue ?? <ServiceModel>[])
        .catchError((_) => <ServiceModel>[]);
  }

  Future<List<ServiceByCategoryModel>> findServices({String txt = ""}) async {
    return await getIt<ServiceRemoteApi>()
        .findServices(false, txt)
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

  Future<CurrencyModel?> getCurrencyModel(String code) async =>
      await getIt<CurrencyRemoteApi>()
          .getByCode(code)
          .then((onValue) => onValue)
          .catchError((e) {
        debugPrint(e.toString());
        return null;
      });


  Future<List<CurrencyModel>> getCurrencies() async =>
      await getIt<CurrencyRemoteApi>()
          .findByCode()
          .then((onValue) => onValue ?? <CurrencyModel>[])
          .catchError((e) {
        debugPrint(e.toString());
        return <CurrencyModel>[];
      });

  Future<int> addUserService(UserServiceRequestModel param) async =>
      await getIt<UserServicesRemoteApi>().addUserService(data: param);

  Future<int> updateUserService(UserServiceRequestModel param) async =>
      await getIt<UserServicesRemoteApi>().updateUserService(data: param);

  Future<void> deleteUserService(int userServiceId) async =>
      await getIt<UserServicesRemoteApi>().deleteUserService(userServiceId: userServiceId);

  Future<bool> attachServiceFiles(List<File> files, int userServiceId) async {
    if (files.isNotEmpty) {
      return await Future.wait([
        for (var (index, file) in files.indexed)
          getIt<UserServicesRemoteApi>().attachServiceImage(
              userServiceId: userServiceId,
              attachType: file.path.split("/").last.split(".").last,
              file: file,
              isMain: index == 0,
              attachName: file.path.split("/").last),
      ]).then((onValue){
        return true;
      }).catchError((_){return false;});
    }
    return false;
  }
}
