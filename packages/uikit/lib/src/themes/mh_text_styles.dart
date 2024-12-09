import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
const kPackageName = 'uikit';


/// 18
TextStyle get body18MediumStyle => TextStyle(
  fontSize: 17.sp,
  height: 20 / 17,
  fontFamily: FontFamily.sFProDisplay,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  package: kPackageName,
  color: MHColors.whiteColor,
  letterSpacing: -0.43,
);

///
TextStyle get body28SemiBoldStyle => TextStyle(
  fontSize: 28.sp,
  height: 33.41 / 28,
  fontFamily: FontFamily.sFProDisplay,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  color: MHColors.whiteColor,
  package: kPackageName,
 );

TextStyle get buttonTextStyles => TextStyle(
  fontSize: 16.sp,
  height: 22 / 16,
  fontFamily: FontFamily.sFProDisplay,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  package: kPackageName,
  color: MHColors.blackColor,
  letterSpacing: -0.43,
);