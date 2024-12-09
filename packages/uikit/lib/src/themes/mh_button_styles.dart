import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

OutlinedButtonThemeData outlinedButtonThemeData() => OutlinedButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        overlayColor: WidgetStateProperty.all(MHColors.grayColor),
        textStyle: WidgetStateProperty.all(buttonTextStyles),
        shadowColor: WidgetStateProperty.all(Colors.transparent),
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.pressed) ||
              states.contains(WidgetState.selected)) {
            return MHColors.grayColor;
          }
          return MHColors.darkGrayColor;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return MHColors.grayColor;
          }
          return MHColors.whiteColor;
        }),
        padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w)),
        shape: WidgetStateProperty.all(const StadiumBorder()),
        side: WidgetStateProperty.resolveWith<BorderSide>((states) {
          if (states.contains(WidgetState.pressed) ||
              states.contains(WidgetState.selected)) {
            return BorderSide.none;
          }
          return const BorderSide(
            width: 1,
            color: MHColors.grayColor,
          );
        }),
      ),
    );
