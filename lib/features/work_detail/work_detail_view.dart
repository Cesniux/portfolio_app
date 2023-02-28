import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/work_detail/page/work_detail_page.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class WorkDetailView extends StatelessWidget with BaseMixin {
  const WorkDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final screenType = getScreenType(getMaxWidth(context));
      switch (screenType) {
        case ScreenType.mobile:
          return const WorkDetailPage.mobile();
        case ScreenType.tablet:
          return const WorkDetailPage.tablet();
        case ScreenType.desktop:
          return const WorkDetailPage.desktop();
      }
    });
  }
}
