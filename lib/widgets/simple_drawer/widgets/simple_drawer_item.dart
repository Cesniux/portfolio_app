import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/style/res/constants.dart';

class SimpleDrawerItem extends StatelessWidget with BaseMixin {
  final String title;
  const SimpleDrawerItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title,
                style: getTextTheme(context).labelMedium,
              ),
            ),
            Icon(
              Icons.arrow_right,
              color: CColor.white,
            )
            // Icon(Icons.home_max_outlined, color: CColor.white),
          ],
        ),
      ),
    );
  }
}
