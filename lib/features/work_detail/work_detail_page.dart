import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_appbar.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_image.dart';
import 'package:portfolio_app/features/work_detail/widgets/work_detail_year_tag.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';
import 'package:portfolio_app/widgets/short_paragraph_text.dart';

class WorkDetailPage extends StatelessWidget with BaseMixin {
  const WorkDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: WorkDetailAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 235, right: 235, top: 78),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Designing Dashboards with usability in mind',
                  style: getTextTheme(context).titleMedium,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const WorkDetailYearTag(year: '2099'),
                  const SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: Text('Dashboard, User Experience Design',
                        style: getTextTheme(context).displayMedium),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ShortParagraphText(
                  text:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
              const SizedBox(
                height: 50,
              ),
              const WorkDetailImage(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/work_detail_image2.png?alt=media&token=10497339-0347-4aac-836d-30215db7f83f',
              ),
              const ShortParagraphText(
                  text:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.'),
              const SizedBox(
                height: 27,
              ),
              const WorkDetailImage(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/work_detail_image2.png?alt=media&token=10497339-0347-4aac-836d-30215db7f83f',
              ),
              const WorkDetailImage(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/work_detail_image2.png?alt=media&token=10497339-0347-4aac-836d-30215db7f83f',
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
