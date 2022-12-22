import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';

class HeroMainWidget extends StatelessWidget with BaseExtension {
  const HeroMainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getMaxHeight(context),
      color: CColor.backgroundColorBright,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          ProfilePhotoWidget(),
          HeroMainText(),
          HeroParagraphText(),
          CustomButton(
            text: 'Download Resume',
          ),
        ],
      ),
    );
  }
}
