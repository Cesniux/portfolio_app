import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';

class HeroMainText extends StatelessWidget with BaseExtension {
  final double fontSize;

  const HeroMainText.mobile({
    this.fontSize = 32,
    Key? key,
  }) : super(key: key);

  const HeroMainText.tablet({
    this.fontSize = 38,
    Key? key,
  }) : super(key: key);
  const HeroMainText.desktop({
    this.fontSize = 46,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Text(
        'Hi, I am Domantas, Digital Creator',
        textAlign: TextAlign.center,
        style:
            getTextTheme(context).headlineLarge!.copyWith(fontSize: fontSize),
      ),
    );
  }
}
