import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';

class HeroSubtitle extends StatelessWidget with BaseMixin {
  const HeroSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: 31, vertical: 21),
      child: Text(
        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
        textAlign: TextAlign.center,
         style: getTextTheme(context).bodyMedium,
      ),
    );
  }
}