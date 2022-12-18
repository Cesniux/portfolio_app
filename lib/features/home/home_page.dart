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
        child: Stack(
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
      ),
    );
  }
}
