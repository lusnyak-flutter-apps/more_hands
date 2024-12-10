import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uikit/src/themes/mh_button_styles.dart';
import 'package:uikit/uikit.dart';

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: FontFamily.sFProDisplay,
      scaffoldBackgroundColor: MHColors.blackBGColor,
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: true,
        ),
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: MHColors.amberColor,
        onPrimary: MHColors.whiteColor,
        secondary: MHColors.amberColor,
        onSecondary: MHColors.yellowColor,
        error: MHColors.redColor,
        onError: MHColors.redColor,
        surface: Colors.transparent,
        onSurface: Colors.transparent,
      ),
      scrollbarTheme: ScrollbarThemeData(
        radius: const Radius.circular(1.5),
        thickness: WidgetStateProperty.all(3.0),
        thumbColor: WidgetStateProperty.all(MHColors.whiteColor),
      ),
      outlinedButtonTheme: outlinedButtonThemeData(),
      inputDecorationTheme: roundInputDecoration(),
    );
