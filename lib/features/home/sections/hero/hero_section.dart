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

  Future<HeroData> getHero() async {
    var response = await FirebaseFirestore.instance
        .collection('hero')
        .doc('C9yTZA2dQQDUrrrctNeB')
        .get();

    Map<String, dynamic>? heroData = response.data();
    return HeroData.fromJson(heroData!);
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
                    heroData: snapshot.data as HeroData,
                  );
                case ScreenType.tablet:
                  return HeroSectionTablet(
                    heroData: snapshot.data as HeroData,
                  );
                case ScreenType.desktop:
                  return HeroSectionDesktop(
                    heroData: snapshot.data as HeroData,
                  );
              }
            },
          );
        });
  }
}
