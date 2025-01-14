import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/measure_code.dart';

part 'service_measure_model.freezed.dart';

part 'service_measure_model.g.dart';

@freezed
class ServiceMeasureModel with _$ServiceMeasureModel {
  const factory ServiceMeasureModel({
    required int id,
    @Default(MeasureCode.hour) MeasureCode mCode,
    @JsonKey(name: 'measName') String? name,
  }) = _ServiceMeasureModel;

  factory ServiceMeasureModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceMeasureModelFromJson(json);
}
