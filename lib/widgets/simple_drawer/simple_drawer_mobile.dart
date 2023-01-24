import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class SimpleDrawerMobile extends StatelessWidget with BaseMixin {
  const SimpleDrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: getMaxWidth(context) * 0.6,
      backgroundColor: CColor.textColor.withOpacity(0.85),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: getMaxHeight(context) * 0.1),
        child: RotatedBox(
          quarterTurns: 1,
          child: Theme(
            data: ThemeData().copyWith(
                hoverColor: CColor.backgroundColorDifferent.withOpacity(0.2),
                splashColor: CColor.backgroundColorDifferent.withOpacity(0.2)),
            child: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              padding: EdgeInsets.zero,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(
                  horizontal: getMaxWidth(context) * 0.013),
              indicatorWeight: 3,
              labelColor: CColor.buttonColor,
              labelStyle: textTheme.labelLarge,
              unselectedLabelColor: CColor.blueTextcolor,
              indicatorColor: CColor.textColor.withOpacity(0),
              splashBorderRadius: BorderRadius.circular(60),
              onTap: (value) => Scaffold.of(context).closeEndDrawer(),
              tabs: const [
                RotatedBox(
                  quarterTurns: 3,
                  child: Tab(
                    text: 'Home',
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Tab(
                    text: 'Blog',
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Tab(
                    text: 'Works',
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Tab(
                    text: 'Contact',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
