import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class HeroView extends StatelessWidget with BaseExtension {
  const HeroView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth);
        switch (screenType) {
          case ScreenType.mobile:
            return Container(
              height: getMaxHeight(context),
              color: CColor.backgroundColorBright,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  ProfilePhoto(),
                  HeroMainText.mobile(),
                  HeroParagraphText(),
                  CustomButton(
                    text: 'Download Resume',
                  ),
                ],
              ),
            );
          case ScreenType.tablet:
            return Container(
              height: getMaxHeight(context),
              color: CColor.backgroundColorBright,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ProfilePhoto(),
                  const HeroMainText.tablet(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getMaxWidth(context) * 0.1),
                    child: const HeroParagraphText(),
                  ),
                  const CustomButton(
                    text: 'Download Resume',
                  ),
                ],
              ),
            );
          case ScreenType.desktop:
            return Container(
              height: getMaxHeight(context) * 0.8,
              color: CColor.backgroundColorBright,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 148),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const ProfilePhoto(),
                    const HeroMainText.desktop(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getMaxWidth(context) * 0.1),
                      child: const HeroParagraphText(),
                    ),
                    const CustomButton(
                      text: 'Download Resume',
                    ),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}
