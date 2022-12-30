import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_button.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_photo.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_subtitle.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_title.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroSectionMobile extends StatelessWidget with BaseMixin {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String cvDownloadUrl;
  const HeroSectionMobile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.cvDownloadUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getMaxHeight(context),
      color: CColor.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          HeroPhoto(),
          HeroTitle.mobile(),
          HeroSubtitle(),
          HeroButton(
            text: 'Download Resume',
          ),
        ],
      ),
    );
  }
}
