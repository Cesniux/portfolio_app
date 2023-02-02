import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';

class HeroSubtitle extends StatelessWidget with BaseMixin {
  final String subtitle;
  const HeroSubtitle({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 21),
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: getTextTheme(context).bodyMedium,
      ),
    );
  }
}
