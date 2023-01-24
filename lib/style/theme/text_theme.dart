import 'package:flutter/material.dart';

import '../res/constants.dart';

TextTheme textTheme = TextTheme(
  headlineLarge: TextStyle(
      color: CColor.textColor,
      fontSize: 40,
      height: 1.25,
      fontWeight: FontWeight.w700),
  bodyMedium: const TextStyle(
    fontSize: 16,
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
    fontSize: 18,
    fontWeight: FontWeight.w400,
  ),
  titleMedium: TextStyle(
      color: CColor.textColor,
      fontSize: 26,
      fontWeight: FontWeight.w700,
      height: 1.35),
  labelSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: CColor.white,
      height: 1.6,
      letterSpacing: 0.1),
  labelLarge: TextStyle(
      color: CColor.blueTextcolor,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.3),
);
