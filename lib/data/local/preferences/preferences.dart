import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const String onBoardingLaunchKey = "onBoardingLaunch";
  static const String pushTokenKey = "pushToken";
  static const String latitudeKey = "latitude";
  static const String longitudeKey = "longitude";
  static const String locationIdKey = "locationId";
  static const String languageCodeKey = "languageCode";

  Preferences._();

  static Preferences instance = Preferences._();

  static SharedPreferences? _sharedPrefs;

  getSharedInstance() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  bool onBoardingLaunch() =>
      _sharedPrefs?.getBool(Preferences.onBoardingLaunchKey) ?? false;

  setOnBoardingLaunch(bool value) async =>
      await _sharedPrefs?.setBool(Preferences.onBoardingLaunchKey, value);

  String get pushToken =>
      _sharedPrefs?.getString(Preferences.pushTokenKey) ?? "";

  set pushToken(String value) {
    _sharedPrefs?.setString(Preferences.pushTokenKey, value);
  }

  String get languageCode =>
      _sharedPrefs?.getString(Preferences.languageCodeKey) ?? "ru";

  set languageCode(String value) {
    _sharedPrefs?.setString(Preferences.languageCodeKey, value);
  }

  double get longitude =>
      _sharedPrefs?.getDouble(Preferences.longitudeKey) ?? 55.647796;

  set longitude(double value) {
    _sharedPrefs?.setDouble(Preferences.longitudeKey, value);
  }

  double get latitude =>
      _sharedPrefs?.getDouble(Preferences.latitudeKey) ?? 37.554833;

  set latitude(double value) {
    _sharedPrefs?.setDouble(Preferences.latitudeKey, value);
  }

  int get locationId =>
      _sharedPrefs?.getInt(Preferences.locationIdKey) ?? 0;

  set locationId(int value) {
    _sharedPrefs?.setInt(Preferences.locationIdKey, value);
  }

  Future<void> deleteAll() async {
    // await _sharedPrefs?.remove(Preferences.onBoardingLaunchKey);
    await _sharedPrefs?.remove(Preferences.pushTokenKey);
    await _sharedPrefs?.remove(Preferences.locationIdKey);
  }
}


