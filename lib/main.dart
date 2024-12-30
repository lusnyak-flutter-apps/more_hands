import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:uikit/uikit.dart';

import 'core/core.dart';
import 'data/data.dart';
import 'more_hands_app.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();
  await Preferences.instance.getSharedInstance();
  await getIt<FirebaseProvider>().initializeApp();
  await FCMService.instance.setUp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    systemStatusBarContrastEnforced: true,
  ),);
  supportImagePickerPlatformOptions();
  runApp(moreHandsApp);
}
