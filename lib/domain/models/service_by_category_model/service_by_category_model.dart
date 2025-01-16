import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/models/category_model/category_model.dart';
import 'package:more_hands/domain/models/service_model/service_model.dart';

part 'service_by_category_model.freezed.dart';

part 'service_by_category_model.g.dart';

@freezed
class ServiceByCategoryModel with _$ServiceByCategoryModel {
  const factory ServiceByCategoryModel({
    @JsonKey(name: 'catInfo') CategoryModel? category,
    @JsonKey(name: 'userServicesInfo')
    @Default(<ServiceModel>[])
    List<ServiceModel> services,
  }) = _ServiceByCategoryModel;

  factory ServiceByCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceByCategoryModelFromJson(json);
}
