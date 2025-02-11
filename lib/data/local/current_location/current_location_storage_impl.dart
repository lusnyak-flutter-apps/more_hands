import 'dart:convert';

import 'package:more_hands/core/core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

import 'current_location_storage.dart';

@Injectable(as: CurrentLocationStorage)
class CurrentLocationStorageImpl implements CurrentLocationStorage {
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> saveLocation(LocationModel location) async {
    Map<String, dynamic> tokenJson = location.toJson();
    String tokenJsonString = jsonEncode(tokenJson);

    await _storage.write(key: CurrentLocationStorage.key, value: tokenJsonString);
  }

  @override
  Future<void> deleteLocation() async {
    await _storage.delete(key: CurrentLocationStorage.key);
  }

  @override
  Future<LocationModel?> readLocation() async {
    final locationString = await _storage.read(key: CurrentLocationStorage.key);
    if (locationString != null && locationString.isNotEmpty) {
      Map<String, dynamic> tokenJson = jsonDecode(locationString);
      return LocationModel.fromJson(tokenJson);
    }
    return null;
  }
}
