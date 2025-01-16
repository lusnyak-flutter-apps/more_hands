
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeHelper on DateTime {
  String formatDate({String? format}) {
    return DateFormat(format ?? "dd.MM.yyyy", 'ru').format(this);
  }

  DateTime get getOnlyDay => DateTime(year, month, day);

  // DateTime get getMonthFirstDay => DateTime(year, month, 1);

  TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);
}

extension TimeOfDayHelper on TimeOfDay {
  DateTime toDate() {
    final today = DateTime.now();
    return DateTime(today.year, today.month, today.day, hour, minute);
  }

  String formatTime({String? format}) {
    return DateFormat(format ?? "HH:mm").format(toDate());
  }
}
