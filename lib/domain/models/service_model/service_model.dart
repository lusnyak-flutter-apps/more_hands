import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/file_model/file_model.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';

part 'service_model.freezed.dart';

part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required int catId,
    @JsonKey(name: 'catMcode') String? catMCode,
    String? catName,
    required int servId,
    @JsonKey(name: 'servMcode') String? servMCode,
    String? servName,
    String? servImageUrl,
    @Default(<LocationModel>[])List<LocationModel> locations,
    @Default(<FileModel>[])List<FileModel> files,
    @Default(false) bool userHasService,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
