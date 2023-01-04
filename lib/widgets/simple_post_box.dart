import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class SimplePostBox extends StatelessWidget with BaseMixin {
  final double boxWidth;
  final String title;
  final String date;
  final String topicKeywords;
  final String description;

  const SimplePostBox.mobile({
    Key? key,
    this.boxWidth = double.infinity,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
  }) : super(key: key);
  const SimplePostBox.tablet({
    Key? key,
    this.boxWidth = double.infinity,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
  }) : super(key: key);
  const SimplePostBox.desktop({
    Key? key,
    this.boxWidth = 400,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Container(
        decoration: BoxDecoration(
          color: CColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        width: boxWidth,
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: getTextTheme(context).titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 22),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Text(
                      date,
                      style: getTextTheme(context).bodyMedium,
                    ),
                    VerticalDivider(
                      color: CColor.textColor,
                      thickness: 1.5,
                      indent: 3,
                      endIndent: 3,
                    ),
                    Text(
                      topicKeywords,
                      style: getTextTheme(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            ShortParagraphText(
              text: description,
            ),
          ],
        ),
      ),
    );
  }
}
