import 'package:more_hands/domain/models/location_model/location_model.dart';

abstract class CurrentLocationStorage {
  static const String key = "current-location";

  Future<void> deleteLocation();
  Future<LocationModel?> readLocation();
  Future<void> saveLocation(LocationModel location);
}