import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_photo.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_subtitle.dart';
import 'package:portfolio_app/features/home/sections/hero/widgets/hero_title.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroSectionDesktop extends StatelessWidget with BaseMixin {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String cvDownloadUrl;
  const HeroSectionDesktop({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.cvDownloadUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getMaxHeight(context) < 550 ? null : getMaxHeight(context) * 0.9,
      color: CColor.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 148),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeroPhoto(
              imageUrl: imageUrl,
            ),
             HeroTitle.desktop(title: title),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getMaxWidth(context) * 0.1),
              child:  HeroSubtitle(subtitle: subtitle,),
            ),
            const HeroButton(
              text: 'Download Resume',
            ),
          ],
        ),
      ),
    );
  }
}
