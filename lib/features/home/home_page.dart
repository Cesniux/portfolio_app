import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';

import '../../style/res/constants.dart';
import '../../widgets/widgets.dart';
import 'widgets/home_page_widgets.dart';

class HomeView extends StatelessWidget with BaseExtension {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Ink(
                  height: getMaxHeight(context),
                  color: CColor.backgroundColorBright,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ProfilePhotoWidget(),
                    HeroMainText(),
                    HeroParagraphText(),
                    CustomButton(
                      text: 'Download Resume',
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 50),
              color: CColor.backgroundColorDifferent,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: const [
                    CustomSmallTitleText(
                      text: 'Recent posts',
                    ),
                    BlogBox(),
                    SizedBox(
                      height: 17,
                    ),
                    BlogBox(),
                  ],
                ),
              ),
            ),
            Container(
              color: CColor.backgroundColorBright,
              padding: const EdgeInsets.symmetric(horizontal: 18),
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
                  SocialMediaCopyrightBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
