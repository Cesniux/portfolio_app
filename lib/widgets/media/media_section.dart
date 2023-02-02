import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/style/res/constants.dart';

class MediaSection extends StatelessWidget with BaseMixin {
  const MediaSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Material(
            color: CColor.white,
            child: SizedBox(
              width: 310,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      splashColor:
                          CColor.buttonSplashColorGreen.withOpacity(0.5),
                      highlightColor:
                          CColor.buttonSplashColorGreen.withOpacity(0.3),
                      onPressed: () {},
                      icon: Image.asset('assets/icons/icons_1x/fb_icon.png')),
                  IconButton(
                      splashColor: CColor.textColor.withOpacity(0.3),
                      highlightColor: CColor.textColor.withOpacity(0.2),
                      onPressed: () {},
                      icon:
                          Image.asset('assets/icons/icons_1x/insta_icon.png')),
                  IconButton(
                      splashColor:
                          CColor.buttonSplashColorAmber.withOpacity(0.4),
                      highlightColor:
                          CColor.buttonSplashColorAmber.withOpacity(0.2),
                      onPressed: () {},
                      icon: Image.asset(
                          'assets/icons/icons_1x/twitter_icon.png')),
                  IconButton(
                      splashColor: CColor.buttonColor.withOpacity(0.4),
                      highlightColor: CColor.buttonColor.withOpacity(0.2),
                      onPressed: () {},
                      icon: Image.asset(
                          'assets/icons/icons_1x/linkedin_icon.png')),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          'Copyright ©2023 All rights reserved',
          style: getTextTheme(context).bodyMedium!.copyWith(fontSize: 14),
        ),
        const SizedBox(
          height: 56,
        )
      ],
    );
  }
}
