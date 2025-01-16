import 'package:more_hands/core/core.dart';

part 'service_info_model.freezed.dart';

part 'service_info_model.g.dart';

@freezed
class ServiceInfoModel with _$ServiceInfoModel {
  const factory ServiceInfoModel({
    required int servId,
    @JsonKey(name: 'servMcode') String? servMCode,
    String? servName,
    String? servImageUrl,
  }) = _ServiceInfoModel;

  factory ServiceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceInfoModelFromJson(json);
}
