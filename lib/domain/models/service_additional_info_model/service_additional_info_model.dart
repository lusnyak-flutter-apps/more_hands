import 'package:more_hands/core/core.dart';
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
    String? priceCurrency,
    num? price,
    String? addInfo,
    String? priceCurrencySign,
  }) = _ServiceAdditionalInfoModel;

  factory ServiceAdditionalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceAdditionalInfoModelFromJson(json);
}

extension ServiceAdditionalInfoModelExtension on ServiceAdditionalInfoModel {
  String get formatPrice {
    final tempPrice = price != null ? price!.roundToDouble() : 0;
    if (tempPrice >= 1000) {
      String formatted = (tempPrice / 1000).toStringAsFixed(1);
      if (formatted.length > 3) {
        formatted = formatted.substring(0, 3);
      }
      return '${formatted}k';
    } else {
      return tempPrice.toInt().toString();
    }
  }
}
