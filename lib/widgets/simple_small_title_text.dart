import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';

class SimpleSmallTitleText extends StatelessWidget with BaseMixin {
  final String text;
  final double bottomPadding;
  const SimpleSmallTitleText({
    Key? key,
    required this.text,
    this.bottomPadding = 21,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 21, bottom: bottomPadding),
      child: Text(
        text,
        style: getTextTheme(context).displayMedium,
      ),
    );
  }
}
