import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class HomePostBox extends StatelessWidget with BaseMixin {
  final double boxWidth;
  final double bottomPadding;
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final bool isInBlogView;

  const HomePostBox.mobile({
    Key? key,
    this.boxWidth = double.infinity,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    this.bottomPadding = 17,
    required this.isInBlogView,
  }) : super(key: key);
  const HomePostBox.tablet({
    Key? key,
    this.boxWidth = double.infinity,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    this.bottomPadding = 17,
    required this.isInBlogView,
  }) : super(key: key);
  const HomePostBox.desktop({
    Key? key,
    this.boxWidth = 400,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    this.bottomPadding = 0,
    required this.isInBlogView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11, right: 11, bottom: bottomPadding),
      child: Container(
        decoration: BoxDecoration(
          color: CColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        width: isInBlogView ? double.infinity : boxWidth,
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: getTextTheme(context).titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 20),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Text(
                      date,
                      style: getTextTheme(context).titleSmall,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    VerticalDivider(
                      color: CColor.textColor,
                      width: getMaxWidth(context) * 0.028,
                      thickness: 1.5,
                      indent: 3,
                      endIndent: 3,
                    ),
                    Text(
                      topicKeywords,
                      style: getTextTheme(context).titleSmall,
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
