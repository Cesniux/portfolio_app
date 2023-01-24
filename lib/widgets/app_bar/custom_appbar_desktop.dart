import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class CustomAppBarDesktop extends StatelessWidget
    with PreferredSizeWidget, BaseMixin {
  const CustomAppBarDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        // SizedBox(
        //   width: getMaxWidth(context) * 0.67,
        // ),
        Theme(
          data: ThemeData().copyWith(
              hoverColor: CColor.backgroundColorDifferent.withOpacity(1),
              splashColor: CColor.backgroundColorDifferent.withOpacity(1)),
          child: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelPadding:
                EdgeInsets.symmetric(horizontal: getMaxWidth(context) * 0.013),
            indicatorWeight: 3,
            labelColor: CColor.buttonColor,
            labelStyle: textTheme.labelLarge,
            unselectedLabelColor: CColor.blueTextcolor,
            indicatorColor: CColor.textColor.withOpacity(0),
            splashBorderRadius: BorderRadius.circular(30),
            tabs: const [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Blog',
              ),
              Tab(text: 'Works'),
              Tab(
                text: 'Contact',
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],

      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      //   child: IconButton(
      //       onPressed: () {
      //         Scaffold.of(context).openEndDrawer();
      //       },
      //       icon: Image.asset('assets/icons/icons_1x/menu_icon.png')),
      // )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
