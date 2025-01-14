import 'package:more_hands/core/core.dart';
import 'package:more_hands/domain/enums/currency_code.dart';
import 'package:more_hands/domain/enums/measure_code.dart';

part 'currency_model.freezed.dart';

part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required int id,
    required CurrencyCode curCode,
    required int curNumber,
    required String curName,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
