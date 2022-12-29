import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class FeaturedWorks extends StatelessWidget {
  const FeaturedWorks({
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
              color: CColor.white,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: const [
                  CustomSmallTitleText(
                    text: 'Featured works',
                    bottomPadding: 5,
                  ),
                  WorkBoxWidget(),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
            );
          case ScreenType.tablet:
            return Container(
              color: CColor.white,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: const [
                  CustomSmallTitleText(
                    text: 'Featured works',
                    bottomPadding: 5,
                  ),
                  WorkBoxWidget(),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
            );
          case ScreenType.desktop:
            return Container(
              color: CColor.white,
              padding: const EdgeInsets.symmetric(horizontal: 148),
              child: Column(
                children: const [
                  CustomSmallTitleText(
                    text: 'Featured works',
                    bottomPadding: 5,
                  ),
                  WorkBoxWidget(),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
            );
        }
      },
    );
  }
}
