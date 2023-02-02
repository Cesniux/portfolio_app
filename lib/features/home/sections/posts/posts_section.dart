import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/features/home/sections/posts/posts_section_desktop.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'posts_section_mobile.dart';
import 'posts_section_tablet.dart';

class PostsSection extends StatelessWidget with BaseMixin {
  final List<HomePost> data;
  final String sectionTitle;
  const PostsSection({
    Key? key,
    required this.sectionTitle,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth);
        switch (screenType) {
          case ScreenType.mobile:
            return PostsSectionMobile(
              sectionTitle: sectionTitle,
              posts: data,
            );
          case ScreenType.tablet:
            return PostsSectionTablet(
              sectionTitle: sectionTitle,
              posts: data,
            );
          case ScreenType.desktop:
            return PostsSectionDesktop(
              sectionTitle: sectionTitle,
              posts: data,
            );
        }
      },
    );
  }
}
