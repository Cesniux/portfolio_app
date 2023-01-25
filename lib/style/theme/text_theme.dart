import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/constants.dart';

TextTheme textTheme = TextTheme(
  headlineLarge: TextStyle(
      color: CColor.textColor,
      fontSize: 30.sp,
      height: 1.25,
      fontWeight: FontWeight.w700),
  bodyMedium: TextStyle(
    fontSize: 16.sp,
    height: 1.45,
    fontWeight: FontWeight.w400,
  ),
  labelMedium: TextStyle(
      fontSize: 20,
      color: CColor.white,
      fontWeight: FontWeight.w500,
      height: 1.45),
  titleSmall: TextStyle(
    color: CColor.textColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  ),
  titleMedium: TextStyle(
      color: CColor.textColor,
      fontSize: 26.sp,
      fontWeight: FontWeight.w600,
      height: 1.35),
  labelSmall: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w800,
      color: CColor.white,
      height: 1.6,
      letterSpacing: 0.1),
  labelLarge: TextStyle(
      color: CColor.blueTextcolor,
      fontSize: 17.sp,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.3),
  displayMedium: TextStyle(
    color: CColor.textColor,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  ),
);
