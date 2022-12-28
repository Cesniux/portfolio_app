import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            BlogBox(),
            SizedBox(
              height: 17,
            ),
            BlogBox(),
          ],
        ),
      ),
    );
  }
}
