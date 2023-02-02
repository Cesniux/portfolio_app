import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/style/res/constants.dart';

import 'widgets/simple_drawer_item.dart';

class SimpleDrawerDesktop extends StatelessWidget with BaseMixin {
  const SimpleDrawerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: getMaxWidth(context) * 0.2,
      backgroundColor: CColor.textColor.withOpacity(0.85),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: const [
              SimpleDrawerItem(
                title: 'Home',
              ),
              SizedBox(
                height: 20,
              ),
              SimpleDrawerItem(
                title: 'Blog',
              ),
              SimpleDrawerItem(
                title: 'Works',
              ),
              SimpleDrawerItem(
                title: 'Contact',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
