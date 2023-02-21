import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/style/res/constants.dart';

class WorkDetailYearTag extends StatelessWidget with BaseMixin {
  final String year;
  const WorkDetailYearTag({super.key, required this.year});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 25,
      decoration: BoxDecoration(
          color: CColor.buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Text(
        year,
        textAlign: TextAlign.center,
        style: getTextTheme(context).labelSmall,
      ),
    );
  }
}
