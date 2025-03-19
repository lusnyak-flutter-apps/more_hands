import 'package:flutter/cupertino.dart';
import 'package:more_hands/core/core.dart';

enum MeasureCode {
  @JsonValue("service.measure.year")
  year("service.measure.year"),
  @JsonValue("service.measure.day")
  day("service.measure.day"),
  @JsonValue("service.measure.month")
  month("service.measure.month"),
  @JsonValue("service.measure.week")
  week("service.measure.week"),
  @JsonValue("service.measure.hour")
  hour("service.measure.hour"),
  @JsonValue("service.measure.service")
  service("service.measure.service");

  final String? rawValue;

  const MeasureCode(this.rawValue);

  String title(BuildContext context) {
    return switch (this) {
      MeasureCode.year => "Год",
      MeasureCode.month => "Месяц",
      MeasureCode.week => "Неделя",
      MeasureCode.day => "День",
      MeasureCode.hour => "Час",
      MeasureCode.service => "Человек",
    };
  }
}
