import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';
import 'package:more_hands/data/data.dart';
import 'package:more_hands/data/remote/location_remote/location_remote.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

@lazySingleton
class LocationRepository {
  Future<List<LocationModel>> findClosestLocations({String txt = ""}) async =>
      await getIt<LocationRemoteApi>()
          .findClosestLocations(locName: txt)
          .then((onValue) => onValue ?? <LocationModel>[])
          .catchError((e) {
        debugPrint(e.toString());
        return <LocationModel>[];
      });

  Future<LocationModel?> whereAmI() async {
    final token = await getIt<TokenStorage>().readToken();
    if (token == null) return null;

    return await getIt<LocationRemoteApi>().whereAmI().then((loc) {
      Preferences.instance.locationId = loc?.id ?? token.closestLoc ?? 0;
      return loc;
    });
  }
}
