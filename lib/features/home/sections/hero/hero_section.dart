import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/models/hero_data.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'hero_section_desktop.dart';
import 'hero_section_mobile.dart';
import 'hero_section_tablet.dart';

class HeroSection extends StatelessWidget with BaseMixin {
  const HeroSection({
    Key? key,
  }) : super(key: key);

  Future<Map<String, dynamic>?> getHeroData() async {
    var response = await FirebaseFirestore.instance
        .collection('hero')
        .doc('C9yTZA2dQQDUrrrctNeB')
        .get();

    Map<String, dynamic>? heroData = response.data();
    return heroData;
  }

  @override
  Widget build(BuildContext context) {
    var hero_1 = HeroData(
      image: 'image',
      title: '',
      subtitle: 'subtitle',
      buttonText: 'buttonText@',
    );

    var hero_2 = const HeroData(
      image: 'image',
      title: 'title',
      subtitle: 'subtitle',
      buttonText: 'buttonText',
    );
    print('Is Equal');
    print(hero_1 == hero_2);

    return FutureBuilder(
        initialData: const [],
        future: getHeroData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.error != null) {
            return const Text('Error!');
          }
          return LayoutBuilder(
            builder: (context, constrains) {
              final screenType = getScreenType(constrains.maxWidth);
              switch (screenType) {
                case ScreenType.mobile:
                  return HeroSectionMobile(
                    heroData: snapshot.data as Map<String, dynamic>,
                  );
                case ScreenType.tablet:
                  return HeroSectionTablet(
                    heroData: snapshot.data as Map<String, dynamic>,
                  );
                case ScreenType.desktop:
                  return HeroSectionDesktop(
                    heroData: snapshot.data as Map<String, dynamic>,
                  );
              }
            },
          );
        });
  }
}
