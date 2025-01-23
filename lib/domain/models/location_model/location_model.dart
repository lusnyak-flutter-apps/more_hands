import 'package:more_hands/core/core.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
   const factory LocationModel({
     int? id,
     String? countryCode,
    required String locName,
    required String countryName,
    num? locLat,
    num? locLon,
    String? countryCurrency,
    String? currencyName,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
