import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class WorkBoxWidget extends StatelessWidget with BaseExtension {
  const WorkBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final screenType = getScreenType(constrains.maxWidth * 1.5);
        switch (screenType) {
          case ScreenType.mobile:
            return Column(
              children: [
                const WorkBoxImage(),
                const WorkBoxTextPart(),
                Divider(
                  color: CColor.dividerGreycolor,
                  height: 34,
                  thickness: 1.5,
                )
              ],
            );
          case ScreenType.tablet:
            return Column(
              children: [
                const WorkBoxImage(),
                const WorkBoxTextPart(),
                Divider(
                  color: CColor.dividerGreycolor,
                  height: 34,
                  thickness: 1.5,
                )
              ],
            );
          case ScreenType.desktop:
            return Row(
              children: [
                const Expanded(child: WorkBoxImage()),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(child: WorkBoxTextPart()),
                Divider(
                  color: CColor.dividerGreycolor,
                  height: 34,
                  thickness: 1.5,
                )
              ],
            );
        }
      },
    );
  }
}
