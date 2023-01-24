import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/widgets/home_page_widgets.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class WorkBoxWidget extends StatelessWidget with BaseMixin {
  final String workTitle;
  final String year;
  final String keyword;
  final String description;
  final String imageUrl;

  const WorkBoxWidget({
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
                  color: CColor.dividerGreycolor,
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
                  color: CColor.dividerGreycolor,
                  height: 34,
                  thickness: 1.5,
                )
              ],
            );
          case ScreenType.desktop:
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: WorkBoxImage(
                        imageUrl: imageUrl,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
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
                  height: 50,
                  thickness: 1.5,
                )
              ],
            );
        }
      },
    );
  }
}
