import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/style/res/constants.dart';

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
        SizedBox(
          width: getMaxWidth(context) * 0.7,
        ),
        Expanded(
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            // overlayColor: ,
            // isScrollable: true,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            indicatorWeight: 3,
            labelColor: CColor.buttonColor,
            unselectedLabelColor: CColor.blueTextcolor,
            indicatorColor: CColor.textColor.withOpacity(0),

            tabs: const [
              Tab(text: 'Home'),
              Tab(
                text: 'Blog',
              ),
              Tab(text: 'Works'),
              Tab(text: 'Contact'),
            ],
          ),
        )
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
