import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';

class HeroTitle extends StatelessWidget with BaseMixin {
  final double fontSize;
  final String title;
  const HeroTitle.mobile({
    this.fontSize = 32,
    Key? key,
    required this.title,
  }) : super(key: key);

  const HeroTitle.tablet({
    this.fontSize = 38,
    Key? key,
    required this.title,
  }) : super(key: key);
  const HeroTitle.desktop({
    this.fontSize = 46,
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style:
            getTextTheme(context).headlineLarge!.copyWith(fontSize: fontSize),
      ),
    );
  }
}
