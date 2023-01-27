import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class WorksView extends StatelessWidget with BaseMixin {
  const WorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final screenType = getScreenType(getMaxWidth(context));
      switch (screenType) {
        case ScreenType.mobile:
          return const WorksSection.mobile();
        case ScreenType.tablet:
          return const WorksSection.tablet();
        case ScreenType.desktop:
          return const WorksSection.desktop();
      }
    });
  }
}

class WorksSection extends StatelessWidget with BaseMixin {
  final double horizontalPaddingMultiplier;

  const WorksSection.mobile({
    Key? key,
    this.horizontalPaddingMultiplier = 0.0,
  }) : super(key: key);
  const WorksSection.tablet({
    Key? key,
    this.horizontalPaddingMultiplier = 0.1,
  }) : super(key: key);
  const WorksSection.desktop({
    Key? key,
    this.horizontalPaddingMultiplier = 0.15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getMaxWidth(context) * horizontalPaddingMultiplier),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 56, left: 0),
                child: Text(
                  'Works',
                  style: getTextTheme(context).headlineLarge,
                ),
              ),
            ),
            const SimpleWorkBox(
              description:
                  'baba yaga, cmon cmon, hehe, there is something on my mind, baby you will see how it\'s gonna be, but don\' let the bees out, they will sting you very hard. I will always eat junk food, but then my body will thank',
              year: '2024',
              keyword: 'Trafford',
              workTitle: 'Setting The Sun',
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/workImages%2Fwork_3_image.png?alt=media&token=4bb2501a-dc62-4f5d-a741-334debc36352',
            ),
            const SimpleWorkBox(
              description:
                  'baba yaga, cmon cmon, hehe, there is something on my mind, baby you will see how it\'s gonna be, but don\' let the bees out, they will sting you very hard. I will always eat junk food, but then my body will thank',
              year: '2024',
              keyword: 'Trafford',
              workTitle: 'Setting The Sun',
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/workImages%2Fwork_3_image.png?alt=media&token=4bb2501a-dc62-4f5d-a741-334debc36352',
            ),
            const SimpleWorkBox(
              description:
                  'baba yaga, cmon cmon, hehe, there is something on my mind, baby you will see how it\'s gonna be, but don\' let the bees out, they will sting you very hard. I will always eat junk food, but then my body will thank',
              year: '2024',
              keyword: 'Trafford',
              workTitle: 'Setting The Sun',
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/workImages%2Fwork_3_image.png?alt=media&token=4bb2501a-dc62-4f5d-a741-334debc36352',
            ),
            const SimpleWorkBox(
              description:
                  'baba yaga, cmon cmon, hehe, there is something on my mind, baby you will see how it\'s gonna be, but don\' let the bees out, they will sting you very hard. I will always eat junk food, but then my body will thank',
              year: '2024',
              keyword: 'Trafford',
              workTitle: 'Setting The Sun',
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/portfolio-app-6c932.appspot.com/o/workImages%2Fwork_3_image.png?alt=media&token=4bb2501a-dc62-4f5d-a741-334debc36352',
            ),
            const SizedBox(
              height: 50,
            ),
            const MediaSection(),
          ],
        ),
      ),
    );
  }
}
