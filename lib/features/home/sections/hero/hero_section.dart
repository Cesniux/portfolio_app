import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'hero_section_desktop.dart';
import 'hero_section_mobile.dart';
import 'hero_section_tablet.dart';

class HeroSection extends StatelessWidget with BaseMixin {
  final HomeHero data;
  const HeroSection({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth);
        switch (screenType) {
          case ScreenType.mobile:
            return HeroSectionMobile(
              heroData: data,
            );
          case ScreenType.tablet:
            return HeroSectionTablet(
              heroData: data,
            );
          case ScreenType.desktop:
            return HeroSectionDesktop(
              heroData: data,
            );
        }
      },
    );
  }
}
