import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class WorkBoxWidget extends StatelessWidget with BaseExtension {
  const WorkBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 240,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                'assets/images/featured_works_image.png',
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 17),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'Designing Dashboards',
              style: getTextTheme(context).titleMedium!.copyWith(fontSize: 24),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Row(
            children: [
              Container(
                width: 62,
                height: 25,
                decoration: BoxDecoration(
                    color: CColor.textColor,
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Text(
                  '2020',
                  textAlign: TextAlign.center,
                  style: getTextTheme(context).labelSmall,
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                'Dashboard',
                style: TextStyle(
                  color: CColor.labelColor,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        const ShortParagraphText(
            text:
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
        Divider(
          color: CColor.dividerGreycolor,
          height: 34,
          thickness: 1.5,
        )
      ],
    );
  }
}
