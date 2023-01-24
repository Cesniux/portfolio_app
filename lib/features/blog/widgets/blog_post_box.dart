import 'package:portfolio_app/base_extension.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/short_paragraph_text.dart';

class BlogPostBox extends StatelessWidget with BaseMixin {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;

  const BlogPostBox({
    Key? key,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, right: 11),
      child: Container(
        decoration: BoxDecoration(
          color: CColor.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 19),
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
                      style: getTextTheme(context).titleSmall,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    VerticalDivider(
                      color: CColor.textColor,
                      width: getMaxWidth(context) * 0.03,
                      thickness: 1.5,
                      indent: 3,
                      endIndent: 3,
                    ),
                    Text(
                      topicKeywords,
                      style: getTextTheme(context)
                          .titleSmall
                          ?.copyWith(color: CColor.labelColor),
                    ),
                  ],
                ),
              ),
            ),
            ShortParagraphText(
              text: description,
            ),
            Divider(
              color: CColor.textColor.withOpacity(0.3),
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
