import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/remote/location_remote/location_remote.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

@lazySingleton
class LocationRepository {
  Future<List<LocationModel>> findUsersByLocAndText({String txt = ""}) async =>
      await getIt<LocationRemoteApi>()
          .findClosestLocations(locName: txt)
          .then((onValue) => onValue ?? <LocationModel>[])
          .catchError((e) {
        debugPrint(e.toString());
        return <LocationModel>[];
      });
}
