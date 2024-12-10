import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static const String onBoardingLaunchKey = "onBoardingLaunch";

  Preferences._();

  static Preferences instance = Preferences._();

  static SharedPreferences? _sharedPrefs;

  getSharedInstance() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  bool onBoardingLaunch() =>
      _sharedPrefs?.getBool(Preferences.onBoardingLaunchKey) ?? false;

  setOnBoardingLaunch(bool value) async => await _sharedPrefs?.setBool(Preferences.onBoardingLaunchKey, value);
}