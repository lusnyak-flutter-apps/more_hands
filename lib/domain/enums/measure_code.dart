import 'package:more_hands/core/core.dart';

enum MeasureCode {
  @JsonValue("service.measure.hour")
  hour("service.measure.hour"),
  @JsonValue("service.measure.service")
  service("service.measure.service");

  final String? rawValue;

  const MeasureCode(this.rawValue);
}
