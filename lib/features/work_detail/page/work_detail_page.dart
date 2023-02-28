import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_appbar.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_image.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_year_tag.dart';
import 'package:portfolio_app/features/works/models/works_work.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';
import 'package:portfolio_app/widgets/short_paragraph_text.dart';

class WorkDetailPage extends StatelessWidget with BaseMixin {
  final WorksWork workDetails;
  final double paddingHorizontal;
  final double paddingTop;

  const WorkDetailPage.mobile(
      {super.key,
      this.paddingHorizontal = 18,
      this.paddingTop = 25,
      required this.workDetails});
  const WorkDetailPage.tablet(
      {super.key,
      this.paddingHorizontal = 70,
      this.paddingTop = 60,
      required this.workDetails});
  const WorkDetailPage.desktop(
      {super.key,
      this.paddingHorizontal = 300,
      this.paddingTop = 78,
      required this.workDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        
          preferredSize: Size.fromHeight(60), child: WorkDetailAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: paddingHorizontal,
              right: paddingHorizontal,
              top: paddingTop),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  workDetails.workTitle,
                  style: getTextTheme(context).titleMedium,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  WorkDetailYearTag(year: workDetails.year),
                  const SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: Text(workDetails.keywordDetail,
                        style: getTextTheme(context).displayMedium),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ShortParagraphText(text: workDetails.description),
              const SizedBox(
                height: 50,
              ),
              WorkDetailImage(
                imageUrl: workDetails.imageUrlDetail1,
              ),
              ShortParagraphText(text: workDetails.descriptionDetail),
              const SizedBox(
                height: 27,
              ),
              WorkDetailImage(
                imageUrl: workDetails.imageUrl,
              ),
              WorkDetailImage(
                imageUrl: workDetails.imageUrlDetail2,
              ),
              const SizedBox(
                height: 27,
              ),
              const MediaSection(),
            ],
          ),
        ),
      ),
    );
  }
}
