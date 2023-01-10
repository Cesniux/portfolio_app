import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/features/home/models/work.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class WorksSection extends StatelessWidget {
  const WorksSection({
    Key? key,
  }) : super(key: key);

  Future<List<Work>> getWorkData() async {
    var response =
        await FirebaseFirestore.instance.collection('works').limit(3).get();

    List<Work> works = [];

    for (var element in response.docs) {
      Map<String, dynamic> data = element.data();
      works.add(Work(
          workTitle: data['workTitle'],
          year: data['year'],
          keyword: data['keyword'],
          description: data['description'],
          imageUrl: data['imageUrl']));
    }
    print(works);

    return works;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        initialData: const [],
        future: getWorkData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Waiting for works');
          }
          if (snapshot.error != null) {
            return const Text('Error!');
          }
          return LayoutBuilder(
            builder: (context, constrains) {
              final screenType = getScreenType(constrains.maxWidth);
              var snapshotData = snapshot.data as List<Work>;

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
                            ...snapshotData.map((work) => WorkBoxWidget(
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
                            ...snapshotData.map((work) => WorkBoxWidget(
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
                    padding: const EdgeInsets.symmetric(horizontal: 148),
                    child: Column(
                      children: [
                        const SimpleSmallTitleText(
                          text: 'Featured works',
                          bottomPadding: 5,
                        ),
                        Column(
                          children: [
                            ...snapshotData.map((work) => WorkBoxWidget(
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
        });
  }
}
