import 'package:flutter/cupertino.dart';
import 'package:localizations/localizations.dart';

extension LocalizationContext on BuildContext {
  AppLocalizations get localized {
    return AppLocalizations.of(this);
  }
}