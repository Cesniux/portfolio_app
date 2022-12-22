import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class BlogBox extends StatelessWidget with BaseExtension {
  const BlogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Container(
        decoration: BoxDecoration(
            color: CColor.backgroundColorBright,
            borderRadius: const BorderRadius.all(Radius.circular(4))),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 19),
        child: Column(
          children: [
            Text(
              'Making a design system from scratch',
              style: getTextTheme(context).titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 22),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Text(
                      '12 Feb 2020',
                      style: getTextTheme(context).bodyMedium,
                    ),
                    VerticalDivider(
                      color: CColor.textColor,
                      thickness: 1.5,
                      indent: 3,
                      endIndent: 3,
                    ),
                    Text(
                      'Design, Pattern',
                      style: getTextTheme(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            const ShortParagraphText(
              text:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
            ),
          ],
        ),
      ),
    );
  }
}
