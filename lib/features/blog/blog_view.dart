import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/blog/sections/blog_section.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class BlogView extends StatelessWidget with BaseMixin {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final screenType = getScreenType(getMaxWidth(context));
      switch (screenType) {
        case ScreenType.mobile:
          return const BlogSection.mobile();

        case ScreenType.tablet:
          return const BlogSection.tablet();

        case ScreenType.desktop:
          return const BlogSection.desktop();
      }
    });
  }
}
