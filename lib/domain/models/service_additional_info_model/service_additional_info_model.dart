import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/currency_code.dart';
import 'package:more_hands/domain/enums/measure_code.dart';

part 'service_additional_info_model.freezed.dart';

part 'service_additional_info_model.g.dart';

@freezed
class ServiceAdditionalInfoModel with _$ServiceAdditionalInfoModel {
  const factory ServiceAdditionalInfoModel({
    required int userServiceId,
    int? servMeasId,
    @JsonKey(name: 'servMeasMcode') MeasureCode? measureCode,
    @JsonKey(name: 'servMcode') String? servMCode,
    CurrencyCode? priceCurrency,
    num? price,
    String? addInfo,
  }) = _ServiceAdditionalInfoModel;

  factory ServiceAdditionalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceAdditionalInfoModelFromJson(json);
}
