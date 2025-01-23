import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

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
  /// **'В *MoreHands* мы объединяем людей, готовых на реальные поступки. Здесь вы находите подлинные связи, которые помогают делать мир вокруг нас лучше.'**
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

  /// No description provided for @home.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get home;

  /// No description provided for @profile.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profile;

  /// No description provided for @requests.
  ///
  /// In ru, this message translates to:
  /// **'Запросы'**
  String get requests;

  /// No description provided for @passKYC.
  ///
  /// In ru, this message translates to:
  /// **'пройдите kyc'**
  String get passKYC;

  /// No description provided for @subscription.
  ///
  /// In ru, this message translates to:
  /// **'подписка'**
  String get subscription;

  /// No description provided for @referralsCount.
  ///
  /// In ru, this message translates to:
  /// **'{count} рефералов'**
  String referralsCount(Object count);

  /// No description provided for @aboutMe.
  ///
  /// In ru, this message translates to:
  /// **'О себе'**
  String get aboutMe;

  /// No description provided for @whatCanIDo.
  ///
  /// In ru, this message translates to:
  /// **'Что могу сделать'**
  String get whatCanIDo;

  /// No description provided for @notFilled.
  ///
  /// In ru, this message translates to:
  /// **'Не заполнено'**
  String get notFilled;

  /// No description provided for @portfolio.
  ///
  /// In ru, this message translates to:
  /// **'Портфолио'**
  String get portfolio;

  /// No description provided for @deleteProfile.
  ///
  /// In ru, this message translates to:
  /// **'Удалить профиль'**
  String get deleteProfile;

  /// No description provided for @logout.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get logout;

  /// No description provided for @nameAndPhotoProfile.
  ///
  /// In ru, this message translates to:
  /// **'Имя и фото профиля'**
  String get nameAndPhotoProfile;

  /// No description provided for @addContacts.
  ///
  /// In ru, this message translates to:
  /// **'Добавьте контакты'**
  String get addContacts;

  /// No description provided for @theyWillBeVisibleToOthersOnlyWithYourConsent.
  ///
  /// In ru, this message translates to:
  /// **'Они будут видны другим только с вашего согласия'**
  String get theyWillBeVisibleToOthersOnlyWithYourConsent;

  /// No description provided for @primaryContact.
  ///
  /// In ru, this message translates to:
  /// **'Основной контакт'**
  String get primaryContact;

  /// No description provided for @email.
  ///
  /// In ru, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @telegram.
  ///
  /// In ru, this message translates to:
  /// **'@telegram'**
  String get telegram;

  /// No description provided for @whatsAppLink.
  ///
  /// In ru, this message translates to:
  /// **'Ссылка WhatsApp'**
  String get whatsAppLink;

  /// No description provided for @tellAboutYourSelf.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите о себе'**
  String get tellAboutYourSelf;

  /// No description provided for @brieflyDescribeWhatYouWantToDo.
  ///
  /// In ru, this message translates to:
  /// **'Кратко опишите, что вы хотите делать и какие услуги можете предоставить'**
  String get brieflyDescribeWhatYouWantToDo;

  /// No description provided for @save.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get save;

  /// No description provided for @whatYouCanGiveToTheWorld.
  ///
  /// In ru, this message translates to:
  /// **'Что ты можешь дать миру'**
  String get whatYouCanGiveToTheWorld;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get search;

  /// No description provided for @tellUsMore.
  ///
  /// In ru, this message translates to:
  /// **'Расскажите подробнее'**
  String get tellUsMore;

  /// No description provided for @entterPrice.
  ///
  /// In ru, this message translates to:
  /// **'Введите стоимость'**
  String get entterPrice;

  /// No description provided for @hour.
  ///
  /// In ru, this message translates to:
  /// **'Час'**
  String get hour;

  /// No description provided for @description.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get description;

  /// No description provided for @addPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Добавьте фото'**
  String get addPhoto;

  /// No description provided for @serviveAdded.
  ///
  /// In ru, this message translates to:
  /// **'Услуга добавлена'**
  String get serviveAdded;

  /// No description provided for @addAnotherService.
  ///
  /// In ru, this message translates to:
  /// **'Добавить еще услугу'**
  String get addAnotherService;

  /// No description provided for @finish.
  ///
  /// In ru, this message translates to:
  /// **'Завершить'**
  String get finish;

  /// No description provided for @selectLocation.
  ///
  /// In ru, this message translates to:
  /// **'Выбор локации'**
  String get selectLocation;

  /// No description provided for @findMe.
  ///
  /// In ru, this message translates to:
  /// **'Найти меня'**
  String get findMe;

  /// No description provided for @select.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать'**
  String get select;

  /// No description provided for @allInfoWillBeDeleted.
  ///
  /// In ru, this message translates to:
  /// **'Вся информация удалится'**
  String get allInfoWillBeDeleted;

  /// No description provided for @subscribeUntil.
  ///
  /// In ru, this message translates to:
  /// **'Подписка до'**
  String get subscribeUntil;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @subscriptionInfoText.
  ///
  /// In ru, this message translates to:
  /// **'Подписка используется для возможности отправлять и принимать запросы'**
  String get subscriptionInfoText;

  /// No description provided for @inviteFriendsGet1Month.
  ///
  /// In ru, this message translates to:
  /// **'Пригласи друзей, получите по 1 мес.'**
  String get inviteFriendsGet1Month;

  /// No description provided for @invite.
  ///
  /// In ru, this message translates to:
  /// **'Пригласить'**
  String get invite;

  /// No description provided for @referralCode.
  ///
  /// In ru, this message translates to:
  /// **'Реферальный код'**
  String get referralCode;

  /// No description provided for @sendCodeToYourFriends.
  ///
  /// In ru, this message translates to:
  /// **'Отправьте этот код вашим друзьям'**
  String get sendCodeToYourFriends;

  /// No description provided for @yourReferrals.
  ///
  /// In ru, this message translates to:
  /// **'Ваши рефералы'**
  String get yourReferrals;

  /// No description provided for @copyAndSend.
  ///
  /// In ru, this message translates to:
  /// **'Скопировать и отправить'**
  String get copyAndSend;

  /// No description provided for @kycNextVerificationDate.
  ///
  /// In ru, this message translates to:
  /// **'следующая верификация KYC {date}'**
  String kycNextVerificationDate(Object date);

  /// No description provided for @reviewAnswer.
  ///
  /// In ru, this message translates to:
  /// **'Ответ на отзыв'**
  String get reviewAnswer;

  /// No description provided for @enterText.
  ///
  /// In ru, this message translates to:
  /// **'Введите текст'**
  String get enterText;

  /// No description provided for @reviewsCount.
  ///
  /// In ru, this message translates to:
  /// **'{count} отзыва'**
  String reviewsCount(Object count);

  /// No description provided for @transactionsCount.
  ///
  /// In ru, this message translates to:
  /// **'{count} сделок'**
  String transactionsCount(Object count);

  /// No description provided for @reviews.
  ///
  /// In ru, this message translates to:
  /// **'Отзывы'**
  String get reviews;

  /// No description provided for @noReviews.
  ///
  /// In ru, this message translates to:
  /// **'Нет отзывов'**
  String get noReviews;

  /// No description provided for @deleteService.
  ///
  /// In ru, this message translates to:
  /// **'Удалить услугу'**
  String get deleteService;

  /// No description provided for @referralCodeCopied.
  ///
  /// In ru, this message translates to:
  /// **'Реферальный код скопирован'**
  String get referralCodeCopied;

  /// No description provided for @sendRequest.
  ///
  /// In ru, this message translates to:
  /// **'Отправить запрос'**
  String get sendRequest;

  /// No description provided for @enterRequestText.
  ///
  /// In ru, this message translates to:
  /// **'Введите текст запроса'**
  String get enterRequestText;

  /// No description provided for @requestSent.
  ///
  /// In ru, this message translates to:
  /// **'Запрос отправлен'**
  String get requestSent;

  /// No description provided for @contactWillbeVisibleAfterRequestConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Контакты станут доступны, когда исполнитель примет ваш запрос'**
  String get contactWillbeVisibleAfterRequestConfirmation;

  /// No description provided for @outgoingRequests.
  ///
  /// In ru, this message translates to:
  /// **'Исходящие запросы'**
  String get outgoingRequests;

  /// No description provided for @incomingRequests.
  ///
  /// In ru, this message translates to:
  /// **'Входящие запросы'**
  String get incomingRequests;

  /// No description provided for @all.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get all;

  /// No description provided for @accepts.
  ///
  /// In ru, this message translates to:
  /// **'Принятые'**
  String get accepts;

  /// No description provided for @waiting.
  ///
  /// In ru, this message translates to:
  /// **'Ожидание'**
  String get waiting;

  /// No description provided for @leaveAReview.
  ///
  /// In ru, this message translates to:
  /// **'Оставить отзыв'**
  String get leaveAReview;

  /// No description provided for @pending.
  ///
  /// In ru, this message translates to:
  /// **'Ожидает'**
  String get pending;

  /// No description provided for @accepted.
  ///
  /// In ru, this message translates to:
  /// **'Принят'**
  String get accepted;

  /// No description provided for @editReview.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать отзыв'**
  String get editReview;

  /// No description provided for @outgoing.
  ///
  /// In ru, this message translates to:
  /// **'Исходящие'**
  String get outgoing;

  /// No description provided for @incoming.
  ///
  /// In ru, this message translates to:
  /// **'Входящие'**
  String get incoming;

  /// No description provided for @reject.
  ///
  /// In ru, this message translates to:
  /// **'Отклонить'**
  String get reject;

  /// No description provided for @accept.
  ///
  /// In ru, this message translates to:
  /// **'Принять'**
  String get accept;

  /// No description provided for @peopleAreNearby.
  ///
  /// In ru, this message translates to:
  /// **'Люди рядом'**
  String get peopleAreNearby;

  /// No description provided for @kycVerification.
  ///
  /// In ru, this message translates to:
  /// **'KYC верификация'**
  String get kycVerification;

  /// No description provided for @mostImportantStep.
  ///
  /// In ru, this message translates to:
  /// **'Самый важный шаг'**
  String get mostImportantStep;

  /// No description provided for @thanks.
  ///
  /// In ru, this message translates to:
  /// **'Спасибо!'**
  String get thanks;

  /// No description provided for @philosophyOfOurAppText.
  ///
  /// In ru, this message translates to:
  /// **'Философия нашего приложения, что тут только реальные люди, для этого,  пожалуйста, пройдите верификацию личности с Persona.'**
  String get philosophyOfOurAppText;

  /// No description provided for @mhDoesNotStoreYourIDDocs.
  ///
  /// In ru, this message translates to:
  /// **'Morehands не хранит данные ваших документов удостоверяющих личность.'**
  String get mhDoesNotStoreYourIDDocs;

  /// No description provided for @youHaveSuccessFullyPassedKYC.
  ///
  /// In ru, this message translates to:
  /// **'Вы успешно прошли KYC!'**
  String get youHaveSuccessFullyPassedKYC;

  /// No description provided for @welcomeToRealPeopleAndBusiness.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать к реальным людям и реальным делам.'**
  String get welcomeToRealPeopleAndBusiness;

  /// No description provided for @accept30DaysSubscription.
  ///
  /// In ru, this message translates to:
  /// **'Примите 30 дней подписки MoreHands в качестве нашей благодарности'**
  String get accept30DaysSubscription;

  /// No description provided for @verificationWithPersona.
  ///
  /// In ru, this message translates to:
  /// **'Верификация с Persona'**
  String get verificationWithPersona;

  /// No description provided for @getStarted.
  ///
  /// In ru, this message translates to:
  /// **'Начать'**
  String get getStarted;

  /// No description provided for @changeLanguage.
  ///
  /// In ru, this message translates to:
  /// **'Изменить язык'**
  String get changeLanguage;

  /// No description provided for @english.
  ///
  /// In ru, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @russian.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get russian;

  /// No description provided for @linkType.
  ///
  /// In ru, this message translates to:
  /// **'Ссылка {type}'**
  String linkType(Object type);

  /// No description provided for @sendRequestToSeeContacts.
  ///
  /// In ru, this message translates to:
  /// **'Отправить запрос, чтобы увидеть контакты'**
  String get sendRequestToSeeContacts;
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
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
