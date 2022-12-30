import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/sections/posts/posts_section_desktop.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'posts_section_mobile.dart';
import 'posts_section_tablet.dart';

class PostsSection extends StatelessWidget with BaseMixin {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final String sectionTitle;
  const PostsSection({
    Key? key,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    required this.sectionTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth);
        switch (screenType) {
          case ScreenType.mobile:
            return PostsSectionMobile(
                title: title,
                date: date,
                topicKeywords: topicKeywords,
                description: description,
                sectionTitle: sectionTitle);
          case ScreenType.tablet:
            return PostsSectionTablet(
                title: title,
                date: date,
                topicKeywords: topicKeywords,
                description: description,
                sectionTitle: sectionTitle);
          case ScreenType.desktop:
            return PostsSectionDesktop(
                title: title,
                date: date,
                topicKeywords: topicKeywords,
                description: description,
                sectionTitle: sectionTitle);
        }
      },
    );
  }
}
