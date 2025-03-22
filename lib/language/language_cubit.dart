import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:localizations/localizations.dart';
import 'package:more_hands/data/data.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale("ru"));

  Future<void> onLoadSelectedLanguage() async {
    String? code = Preferences.instance.languageCode;
    await AppLocalizations.delegate.load(Locale(code));
    emit(Locale(code));
  }

  Future<void> onChangeLanguage(String? code) async {
    Preferences.instance.languageCode = code ?? "ru";
    await AppLocalizations.delegate.load(Locale(code ?? "ru"));
    emit(Locale(code ?? "ru"));
  }
}
