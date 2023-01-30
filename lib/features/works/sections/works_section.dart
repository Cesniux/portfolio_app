import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/works/models/works_work.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';
import 'package:portfolio_app/widgets/simple_work_box.dart';

class WorksSection extends StatelessWidget with BaseMixin {
  final double horizontalPaddingMultiplier;
  final List<WorksWork> worksList;

  const WorksSection.mobile({
    Key? key,
    this.horizontalPaddingMultiplier = 0.07,
    required this.worksList,
  }) : super(key: key);
  const WorksSection.tablet({
    Key? key,
    this.horizontalPaddingMultiplier = 0.1,
    required this.worksList,
  }) : super(key: key);
  const WorksSection.desktop({
    Key? key,
    this.horizontalPaddingMultiplier = 0.15,
    required this.worksList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getMaxWidth(context) * horizontalPaddingMultiplier),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top: getMaxHeight(context) * 0.1, bottom: 56, left: 0),
                child: Text(
                  'Works',
                  style: getTextTheme(context).headlineLarge,
                ),
              ),
            ),
            ...worksList.map((work) => SimpleWorkBox(
                  workTitle: work.workTitle,
                  year: work.year,
                  keyword: work.keyword,
                  description: work.description,
                  imageUrl: work.imageUrl,
                )),
            const SizedBox(
              height: 50,
            ),
            const MediaSection(),
          ],
        ),
      ),
    );
  }
}
