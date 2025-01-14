import 'package:more_hands/core/core.dart';

enum CurrencyCode {
  @JsonValue("USD")
  usDollar("USD"),
  @JsonValue("EUR")
  euro("EUR"),
  @JsonValue("RUB")
  ruble("RUB");

  final String? rawValue;

  const CurrencyCode(this.rawValue);

  String get symbolSign {
    // "€", "£", "¥", "₣"
    return switch(this) {
      CurrencyCode.usDollar => "\$",
      CurrencyCode.euro => "€",
      CurrencyCode.ruble => "₽",
    };
  }
}
