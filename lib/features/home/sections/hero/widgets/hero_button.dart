import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroButton extends StatelessWidget with BaseMixin {
  final String text;
  const HeroButton({Key? key, this.text = 'Button'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        child: InkWell(
          onTap: () {},
          splashColor: CColor.textColor.withOpacity(0.4),
          highlightColor: CColor.textColor.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(2)),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              color: CColor.buttonColor,
            ),
            height: 47,
            width: 208,
            child: Center(
              child: Text(
                text,
                style: getTextTheme(context).labelMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
