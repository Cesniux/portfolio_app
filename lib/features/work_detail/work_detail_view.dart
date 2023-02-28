import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/work_detail/page/work_detail_page.dart';
import 'package:portfolio_app/features/works/models/works_work.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class WorkDetailView extends StatelessWidget with BaseMixin {
  final dynamic worksDetails;
  
  const WorkDetailView({super.key, required this.worksDetails});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final screenType = getScreenType(getMaxWidth(context));
      switch (screenType) {
        case ScreenType.mobile:
          return  WorkDetailPage.mobile(workDetails: worksDetails,);
        case ScreenType.tablet:
          return  WorkDetailPage.tablet(workDetails: worksDetails,);
        case ScreenType.desktop:
          return  WorkDetailPage.desktop(workDetails: worksDetails,);
      }
    });
  }
}
