import 'package:flutter/material.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';
import 'package:portfolio_app/features/work_detail/work_detail_view.dart';
import 'package:portfolio_app/widgets/simple_work_box.dart';

class HomeWorkList extends StatelessWidget {
  const HomeWorkList({
    Key? key,
    required this.snapshotData,
  }) : super(key: key);

  final List<HomeWork> snapshotData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...snapshotData.map((work) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            WorkDetailView(workDetails: work)));
              },
              child: SimpleWorkBox(
                  workTitle: work.workTitle,
                  year: work.year,
                  keyword: work.keyword,
                  description: work.description,
                  imageUrl: work.imageUrl),
            )),
      ],
    );
  }
}
