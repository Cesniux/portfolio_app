import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_button.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_photo.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_subtitle.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_title.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroSectionMobile extends StatelessWidget with BaseMixin {
  final HomeHero heroData;

  const HeroSectionMobile({
    super.key,
    required this.heroData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getMaxHeight(context),
      color: CColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeroPhoto(
            imageUrl: heroData.image,
          ),
          HeroTitle.mobile(
            title: heroData.title,
          ),
          HeroSubtitle(
            subtitle: heroData.subtitle,
          ),
          HeroButton(
            text: heroData.buttonText,
          ),
        ],
      ),
    );
  }
}
