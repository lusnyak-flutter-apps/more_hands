import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/category_model/category_model.dart';
import 'package:more_hands/domain/models/file_model/file_model.dart';
import 'package:more_hands/domain/models/location_model/location_model.dart';
import 'package:more_hands/domain/models/service_info_model/service_info_model.dart';

part 'service_model.freezed.dart';

part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    @JsonKey(name: 'servInfo') ServiceInfoModel? serviceInfo,
    @JsonKey(name: 'catInfo') CategoryModel? category,
    @Default(<LocationModel>[]) List<LocationModel> locations,
    @Default(<FileModel>[]) List<FileModel> files,
    @Default(false) bool userHasService,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}


