import 'package:flutter/material.dart';

import '../res/constants.dart';

TextTheme textTheme = TextTheme(
  headlineLarge: TextStyle(
      color: CColor.textColor,
      fontSize: 32,
      height: 1.25,
      fontWeight: FontWeight.w700),
  bodyMedium: const TextStyle(
    fontSize: 16,
    height: 1.45,
    fontWeight: FontWeight.w400,
  ),
  labelMedium: TextStyle(
      fontSize: 20,
      color: CColor.buttonTextColor,
      fontWeight: FontWeight.w500,
      height: 1.45),
);
