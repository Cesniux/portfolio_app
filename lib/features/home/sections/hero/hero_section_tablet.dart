import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_photo.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_subtitle.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_title.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroSectionTablet extends StatelessWidget with BaseMixin {
  final HomeHero heroData;

  const HeroSectionTablet({
    super.key,
    required this.heroData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeroPhoto(
            imageUrl: heroData.image,
          ),
          HeroTitle.tablet(
            title: heroData.title,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getMaxWidth(context) * 0.1),
            child: HeroSubtitle(
              subtitle: heroData.subtitle,
            ),
          ),
          HeroButton(
            text: heroData.buttonText,
          ),
          SizedBox(
            height: getMaxWidth(context) * 0.05,
          )
        ],
      ),
    );
  }
}
