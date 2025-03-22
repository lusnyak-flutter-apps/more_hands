
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:more_hands/utils/extensions/context_extension.dart';

extension DateTimeHelper on DateTime {
  String formatDate({String? format}) {
    return DateFormat(format ?? "dd.MM.yyyy", 'ru').format(this);
  }

  DateTime get getOnlyDay => DateTime(year, month, day);

  // DateTime get getMonthFirstDay => DateTime(year, month, 1);

  TimeOfDay get timeOfDay => TimeOfDay(hour: hour, minute: minute);

  String timeAgo(BuildContext context) {
    DateTime now = DateTime.now();
    Duration difference = now.difference(this);
    final ago = context.localized.ago;

    if (difference.inDays >= 365) {
      int years = difference.inDays ~/ 365;
      return "$years year${years > 1 ? 's' : ''} $ago";
    } else if (difference.inDays >= 30) {
      int months = difference.inDays ~/ 30;
      return "$months month${months > 1 ? 's' : ''} $ago";
    } else if (difference.inDays > 0) {
      return "${difference.inDays} day${difference.inDays > 1 ? 's' : ''} $ago";
    } else if (difference.inHours > 0) {
      return "${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} $ago";
    } else if (difference.inMinutes > 0) {
      return "${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} $ago";
    } else if(difference.inSeconds > 0) {
      return "${difference.inSeconds} second${difference.inSeconds > 1 ? 's' : ''} $ago";
    }  else {
      return "Just now";
    }
  }

  String timeAgoRu() {
    DateTime now = DateTime.now();
    Duration difference = now.difference(this);

    if (difference.inDays >= 365) {
      int years = difference.inDays ~/ 365;
      return "$years ${_getRussianWord(years, 'год', 'года', 'лет')} назад";
    } else if (difference.inDays >= 30) {
      int months = difference.inDays ~/ 30;
      return "$months ${_getRussianWord(months, 'месяц', 'месяца', 'месяцев')} назад";
    } else if (difference.inDays > 0) {
      return "${difference.inDays} ${_getRussianWord(difference.inDays, 'день', 'дня', 'дней')} назад";
    } else if (difference.inHours > 0) {
      return "${difference.inHours} ${_getRussianWord(difference.inHours, 'час', 'часа', 'часов')} назад";
    } else if (difference.inMinutes > 0) {
      return "${difference.inMinutes} ${_getRussianWord(difference.inMinutes, 'минута', 'минуты', 'минут')} назад";
    }  else if(difference.inSeconds > 0) {
      return "${difference.inSeconds} ${_getRussianWord(difference.inSeconds, 'секунда', 'секунды', 'секунд')} назад";
    } else {
      return "сейчас";
    }
  }

  String _getRussianWord(int number, String one, String few, String many) {
    if (number % 10 == 1 && number % 100 != 11) {
      return one;  // 1 год, 1 месяц, 1 день, 1 час, 1 минута, 1 секунда
    } else if (number % 10 >= 2 && number % 10 <= 4 && (number % 100 < 10 || number % 100 >= 20)) {
      return few;  // 2-4 года, 2-4 месяца, 2-4 дня, 2-4 часа, 2-4 минуты, 2-4 секунды
    } else {
      return many; // 5+ лет, 5+ месяцев, 5+ дней, 5+ часов, 5+ минут, 5+ секунд
    }
  }


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
