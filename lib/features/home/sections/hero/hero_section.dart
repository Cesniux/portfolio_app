import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/models/home_hero.dart';
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

  Future<HomeHero> getHero() async {
    var response = await FirebaseFirestore.instance
        .collection('hero')
        .doc('C9yTZA2dQQDUrrrctNeB')
        .get();

    Map<String, dynamic>? heroData = response.data();
    return HomeHero.fromJson(heroData!);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        initialData: const [],
        future: getHero(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.error != null) {
            return const Text('Error!');
          }
          // print(snapshot.data);
          return LayoutBuilder(
            builder: (context, constrains) {
              final screenType = getScreenType(constrains.maxWidth);
              switch (screenType) {
                case ScreenType.mobile:
                  return HeroSectionMobile(
                    heroData: snapshot.data as HomeHero,
                  );
                case ScreenType.tablet:
                  return HeroSectionTablet(
                    heroData: snapshot.data as HomeHero,
                  );
                case ScreenType.desktop:
                  return HeroSectionDesktop(
                    heroData: snapshot.data as HomeHero,
                  );
              }
            },
          );
        });
  }
}
