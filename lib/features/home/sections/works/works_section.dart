import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class WorksSection extends StatelessWidget with BaseMixin {
  final List<HomeWork> data;
  const WorksSection({
    Key? key,
    required this.data,
  }) : super(key: key);

  // Future<List<HomeWork>> getWorkData() async {
  //   var response = await FirebaseFirestore.instance
  //       .collection('works')
  //       .orderBy('year', descending: true)
  //       .limit(3)
  //       .get();

  //   List<HomeWork> works = [];

  //   for (var element in response.docs) {
  //     Map<String, dynamic> data = element.data();
  //     works.add(HomeWork(
  //         workTitle: data['workTitle'],
  //         year: data['year'],
  //         keyword: data['keyword'],
  //         description: data['description'],
  //         imageUrl: data['imageUrl']));
  //   }
  //   // print(works[0].toJson());

  //   return works;
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth);
        var snapshotData = data;

        switch (screenType) {
          case ScreenType.mobile:
            return Container(
              color: CColor.white,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SimpleSmallTitleText(
                    text: 'Featured works',
                    bottomPadding: 5,
                  ),
                  Column(
                    children: [
                      ...snapshotData.map((work) => SimpleWorkBox(
                          workTitle: work.workTitle,
                          year: work.year,
                          keyword: work.keyword,
                          description: work.description,
                          imageUrl: work.imageUrl)),
                    ],
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                ],
              ),
            );
          case ScreenType.tablet:
            return Container(
              color: CColor.white,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SimpleSmallTitleText(
                    text: 'Featured works',
                    bottomPadding: 5,
                  ),
                  Column(
                    children: [
                      ...snapshotData.map((work) => SimpleWorkBox(
                          workTitle: work.workTitle,
                          year: work.year,
                          keyword: work.keyword,
                          description: work.description,
                          imageUrl: work.imageUrl)),
                    ],
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                ],
              ),
            );
          case ScreenType.desktop:
            return Container(
              color: CColor.white,
              padding: EdgeInsets.symmetric(
                  horizontal: getMaxWidth(context) * 0.1 + 10),
              child: Column(
                children: [
                  const SimpleSmallTitleText(
                    text: 'Featured works',
                    bottomPadding: 5,
                  ),
                  Column(
                    children: [
                      ...snapshotData.map((work) => SimpleWorkBox(
                          workTitle: work.workTitle,
                          year: work.year,
                          keyword: work.keyword,
                          description: work.description,
                          imageUrl: work.imageUrl)),
                    ],
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                ],
              ),
            );
        }
      },
    );
  }
}
