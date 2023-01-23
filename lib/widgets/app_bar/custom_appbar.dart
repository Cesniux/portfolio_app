import 'package:flutter/material.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_desktop.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_mobile.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_tablet.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final screenType = getScreenType(constrains.maxWidth);
      switch (screenType) {
        case ScreenType.mobile:
          return const CustomAppBarMobile();
        case ScreenType.tablet:
          return const CustomAppBarTablet();
        case ScreenType.desktop:
          return const CustomAppBarDesktop();
      }
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
