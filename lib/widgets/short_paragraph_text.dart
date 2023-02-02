import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';

class ShortParagraphText extends StatelessWidget with BaseMixin {
  final String text;
  const ShortParagraphText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: getTextTheme(context).bodyMedium,
      ),
    );
  }
}
