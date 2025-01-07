import 'package:more_hands/core/core.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LocationModel({
     int? uslId,
     int? usfLocationId,
    required String locName,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}