import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/work_detail/page/work_detail_page.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

////////////// works with Dynamic //////////////

class WorkDetailView extends StatelessWidget with BaseMixin {
  final dynamic workDetails;

  const WorkDetailView({super.key, required this.workDetails});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final screenType = getScreenType(getMaxWidth(context));
      switch (screenType) {
        case ScreenType.mobile:
          return WorkDetailPage.mobile(
            workDetails: workDetails,
          );
        case ScreenType.tablet:
          return WorkDetailPage.tablet(
            workDetails: workDetails,
          );
        case ScreenType.desktop:
          return WorkDetailPage.desktop(
            workDetails: workDetails,
          );
      }
    });
  }
}
