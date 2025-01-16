import 'package:more_hands/core/core.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int catId,
    @JsonKey(name: 'catMcode') String? catMCode,
    String? catName,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
