import 'package:more_hands/core/core.dart';

part 'location_short_model.freezed.dart';
part 'location_short_model.g.dart';

@freezed
class LocationShortModel with _$LocationShortModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LocationShortModel({
     int? uslId,
     int? usfLocationId,
    required String locName,
  }) = _LocationShortModel;

  factory LocationShortModel.fromJson(Map<String, dynamic> json) =>
      _$LocationShortModelFromJson(json);
}