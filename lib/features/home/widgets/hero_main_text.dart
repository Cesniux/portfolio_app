import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';

class HeroMainText extends StatelessWidget with BaseExtension {
  const HeroMainText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Text(
        'Hi, I am Domantas, Creative Technologist',
        textAlign: TextAlign.center,
        style: getTextTheme(context).headlineLarge,
      ),
    );
  }
}
