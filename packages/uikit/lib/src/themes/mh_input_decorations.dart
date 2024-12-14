import 'package:uikit/uikit.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorder({Color? color, double radius = 16.0}) =>
    OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius.r),
      borderSide: color != null
          ? BorderSide(color: color, width: 1.0)
          : BorderSide.none,
    );

// OutlineInputBorder outlineInputBorder({Color? color, double radius = 16.0}) =>
//     OutlineInputBorder(
//       borderRadius: BorderRadius.circular(radius.r),
//       borderSide: color != null
//           ? BorderSide(color: color, width: 1.0)
//           : BorderSide.none,
//     );

InputDecorationTheme roundInputDecoration({double radius = 16.0}) =>
    InputDecorationTheme(
      hintStyle:
          body18Style.copyWith(color: MHColors.grayColor98),
      errorStyle: body18Style,
      contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 10.w),
      filled: true,
      fillColor: MHColors.grayColorOpacity38,
      border: outlineInputBorder(),
      enabledBorder: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
      errorBorder: outlineInputBorder(),
      focusedErrorBorder: outlineInputBorder(),
    );
