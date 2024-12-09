import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uikit/uikit.dart';

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: FontFamily.sFProDisplay,
      scaffoldBackgroundColor: MHColors.blackBGColor,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MHColors.blackBGColor,
            statusBarBrightness: Brightness.dark,
            systemStatusBarContrastEnforced: false

        )
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: MHColors.blackBGColor,
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
    );
