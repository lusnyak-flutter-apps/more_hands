import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const String onBoardingLaunchKey = "onBoardingLaunch";
  static const String pushTokenKey = "pushToken";

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

  Future<void> deleteAll() async {
    // await _sharedPrefs?.remove(Preferences.onBoardingLaunchKey);
    await _sharedPrefs?.remove(Preferences.pushTokenKey);
  }
}
