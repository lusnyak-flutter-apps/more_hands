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
      surface: MHColors.blackBGColor,
      onSurface: MHColors.blackBGColor,
    ),
    scrollbarTheme: ScrollbarThemeData(
      radius: const Radius.circular(1.5),
      thickness: WidgetStateProperty.all(3.0),
      thumbColor: WidgetStateProperty.all(MHColors.whiteColor),
    ),
    outlinedButtonTheme: outlinedButtonThemeData(),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      padding: WidgetStateProperty.all(EdgeInsets.all(6.r)),
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        return MHColors.whiteColor.withOpacity(0.24);
      }),
      side: WidgetStateProperty.resolveWith((states){
        return BorderSide(
            color: MHColors.whiteColor.withOpacity(0.26), width: 1.0);
      }),
    )),
    inputDecorationTheme: roundInputDecoration(),
    dividerTheme: const DividerThemeData(
      color: MHColors.grayColor7C,
      thickness: 1.0,
      indent: 0,
      endIndent: 0,
      space: 0,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: MHColors.darkerGrayColor,
      surfaceTintColor: MHColors.darkerGrayColor,
      textStyle: body16MediumStyle.copyWith(color: MHColors.whiteColor),
      labelTextStyle: WidgetStateProperty.all(body16MediumStyle.copyWith(color: MHColors.whiteColor)),
      elevation: 10.0,
      shadowColor: MHColors.darkerGrayColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
        side: const BorderSide(color: MHColors.grayColor, width: 1.0),
      ),

    ));
