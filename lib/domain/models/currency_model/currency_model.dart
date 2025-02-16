import 'package:more_hands/core/core.dart';

part 'currency_model.freezed.dart';

part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required int id,
    required String curCode,
    required int curNumber,
    required String curName,
    required String curSign,
    @Default(true) bool isActive
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
