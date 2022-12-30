import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'hero_section_desktop.dart';
import 'hero_section_mobile.dart';
import 'hero_section_tablet.dart';

class HeroSection extends StatelessWidget with BaseMixin {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String cvDownloadUrl;
  const HeroSection({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.cvDownloadUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth);
        switch (screenType) {
          case ScreenType.mobile:
            return HeroSectionMobile(
              title: title,
              subtitle: subtitle,
              imageUrl: imageUrl,
              cvDownloadUrl: cvDownloadUrl,
            );
          case ScreenType.tablet:
            return const HeroSectionTablet();
          case ScreenType.desktop:
            return const HeroSectionDesktop();
        }
      },
    );
  }
}
