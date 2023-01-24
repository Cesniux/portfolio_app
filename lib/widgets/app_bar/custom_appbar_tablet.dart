import 'package:flutter/material.dart';

class CustomAppBarTablet extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBarTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          child: IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Image.asset('assets/icons/icons_1x/menu_icon.png')),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
