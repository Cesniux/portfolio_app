import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class FeaturedWorksWidget extends StatelessWidget {
  const FeaturedWorksWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}