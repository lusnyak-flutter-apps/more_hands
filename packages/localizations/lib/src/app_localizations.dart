import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'src/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ru')];

  /// No description provided for @appName.
  ///
  /// In ru, this message translates to:
  /// **'MoreHands'**
  String get appName;

  /// No description provided for @next.
  ///
  /// In ru, this message translates to:
  /// **'Далее'**
  String get next;

  /// No description provided for @onboardingTitle1.
  ///
  /// In ru, this message translates to:
  /// **'Только реальные люди, только реальные дела'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDescription1.
  ///
  /// In ru, this message translates to:
  /// **'В *MoreHands* мы объединяем людей, готовых на реальные поступки.  Здесь вы находите подлинные связи, которые помогают делать мир вокруг нас лучше.'**
  String get onboardingDescription1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In ru, this message translates to:
  /// **'Цифровое взаимодействие с человеческим лицом'**
  String get onboardingTitle2;

  /// No description provided for @onboardingDescription2.
  ///
  /// In ru, this message translates to:
  /// **'*MoreHands* возвращает человеческое лицо цифровым взаимодействиям, создавая безопасную среду, где каждый может быть уверен, что взаимодействует с реальными людьми.'**
  String get onboardingDescription2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In ru, this message translates to:
  /// **'Где вы не платите, там вы — товар'**
  String get onboardingTitle3;

  /// No description provided for @onboardingDescription31.
  ///
  /// In ru, this message translates to:
  /// **'Выходя за рамки типичных коммерческих подходов, More Hands даёт понять, что здесь ценны именно реальные связи и помощь, а не заработок на рекламе или продаже данных.'**
  String get onboardingDescription31;

  /// No description provided for @onboardingDescription32.
  ///
  /// In ru, this message translates to:
  /// **'В *MoreHands* ваши данные не превращаются в товар.'**
  String get onboardingDescription32;

  /// No description provided for @onboardingTitle4.
  ///
  /// In ru, this message translates to:
  /// **'Возможности, которые вы создаёте'**
  String get onboardingTitle4;

  /// No description provided for @onboardingDescription4.
  ///
  /// In ru, this message translates to:
  /// **'Мы уважаем ваше время. В *MoreHands* нет анонимов, нет рекламы, нет спама, нет ботов.— только возможности для новых связей и реальных действий.'**
  String get onboardingDescription4;

  /// No description provided for @onboardingTitle5.
  ///
  /// In ru, this message translates to:
  /// **'Безопасность и доверие'**
  String get onboardingTitle5;

  /// No description provided for @onboardingDescription5.
  ///
  /// In ru, this message translates to:
  /// **'Все пользователи проходят верификацию по паспорту, чтобы гарантировать безопасность и доверие. Вы знаете, что взаимодействуете с настоящими людьми.'**
  String get onboardingDescription5;

  /// No description provided for @autorization.
  ///
  /// In ru, this message translates to:
  /// **'Авторизация'**
  String get autorization;

  /// No description provided for @google.
  ///
  /// In ru, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @appleId.
  ///
  /// In ru, this message translates to:
  /// **'Apple ID'**
  String get appleId;

  /// No description provided for @facebook.
  ///
  /// In ru, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @enterInvitation.
  ///
  /// In ru, this message translates to:
  /// **'Ввести пригласительный'**
  String get enterInvitation;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
