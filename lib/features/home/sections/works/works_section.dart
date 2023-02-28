import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';
import 'package:portfolio_app/features/home/sections/works/widgets/home_work_list.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class WorksSection extends StatelessWidget with BaseMixin {
  final List<HomeWork> data;
  const WorksSection({
    Key? key,
    required this.data,
  }) : super(key: key);

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
                  HomeWorkList(snapshotData: snapshotData),
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
                  HomeWorkList(snapshotData: snapshotData),
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
                  HomeWorkList(snapshotData: snapshotData),
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
