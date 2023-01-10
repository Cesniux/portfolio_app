import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class WorkBoxTextPart extends StatelessWidget with BaseMixin {
  final String workTitle;
  final String year;
  final String keyword;
  final String description;
  const WorkBoxTextPart({
    Key? key,
    required this.workTitle,
    required this.year,
    required this.keyword,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 17),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              workTitle,
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
                  year,
                  textAlign: TextAlign.center,
                  style: getTextTheme(context).labelSmall,
                ),
              ),
              const SizedBox(
                width: 22,
              ),
              Text(
                keyword,
                style: TextStyle(
                  color: CColor.labelColor,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        ShortParagraphText(text: description),
      ],
    );
  }
}
