import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer_desktop.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer_mobile.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer_tablet.dart';
import 'package:portfolio_app/widgets/simple_drawer/widgets/simple_drawer_item.dart';

class SimpleDrawer extends StatelessWidget with BaseMixin {
  const SimpleDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (getScreenType(getMaxWidth(context)) == ScreenType.mobile) {
      return const SimpleDrawerMobile();
    }
    if (getScreenType(getMaxWidth(context)) == ScreenType.tablet) {
      return const SimpleDrawerTablet();
    }
    return const SimpleDrawerDesktop();
  }
}
