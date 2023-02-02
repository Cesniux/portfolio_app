import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class SimpleWorkBox extends StatelessWidget with BaseMixin {
  final String workTitle;
  final String year;
  final String keyword;
  final String description;
  final String imageUrl;

  const SimpleWorkBox({
    Key? key,
    required this.workTitle,
    required this.year,
    required this.keyword,
    required this.description,
    required this.imageUrl,
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
                WorkBoxImage(
                  imageUrl: imageUrl,
                ),
                WorkBoxTextPart(
                    workTitle: workTitle,
                    year: year,
                    keyword: keyword,
                    description: description),
                Divider(
                  color: CColor.textColor.withOpacity(0.3),
                  height: 34,
                  thickness: 1.5,
                )
              ],
            );
          case ScreenType.tablet:
            return Column(
              children: [
                WorkBoxImage(
                  imageUrl: imageUrl,
                ),
                WorkBoxTextPart(
                    workTitle: workTitle,
                    year: year,
                    keyword: keyword,
                    description: description),
                Divider(
                  color: CColor.textColor.withOpacity(0.3),
                  height: 40,
                  thickness: 1.8,
                )
              ],
            );
          case ScreenType.desktop:
            return Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: (getMaxWidth(context) > 900) ? 5 : 7,
                      child: WorkBoxImage(
                        imageUrl: imageUrl,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      flex: 10,
                      child: WorkBoxTextPart(
                          workTitle: workTitle,
                          year: year,
                          keyword: keyword,
                          description: description),
                    ),
                    Divider(
                      color: CColor.dividerGreycolor,
                      height: 34,
                      thickness: 1.5,
                    )
                  ],
                ),
                Divider(
                  color: CColor.dividerGreycolor,
                  height: 80,
                  thickness: 1.5,
                )
              ],
            );
        }
      },
    );
  }
}
