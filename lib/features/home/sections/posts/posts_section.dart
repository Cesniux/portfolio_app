import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class PostsSection extends StatelessWidget with BaseMixin {
  const PostsSection({
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
              padding: const EdgeInsets.only(bottom: 50),
              color: CColor.backgroundColorDifferent,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: const [
                    CustomSmallTitleText(
                      text: 'Recent posts',
                    ),
                    BlogBox.mobile(),
                    SizedBox(
                      height: 17,
                    ),
                    BlogBox.mobile(),
                  ],
                ),
              ),
            );
          case ScreenType.tablet:
            return Container(
              padding: const EdgeInsets.only(bottom: 50),
              color: CColor.backgroundColorDifferent,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: const [
                    CustomSmallTitleText(
                      text: 'Recent posts',
                    ),
                    BlogBox.tablet(),
                    SizedBox(
                      height: 17,
                    ),
                    BlogBox.tablet(),
                  ],
                ),
              ),
            );
          case ScreenType.desktop:
            return Container(
              padding: const EdgeInsets.only(bottom: 50),
              color: CColor.backgroundColorDifferent,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getMaxWidth(context) * 0.1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomSmallTitleText(
                              text: 'Recent posts',
                            ),
                            TextButton(
                                onPressed: () {}, child: const Text('View all'))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(child: BlogBox.desktop()),
                          Expanded(child: BlogBox.desktop()),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
        }
      },
    );
  }
}
