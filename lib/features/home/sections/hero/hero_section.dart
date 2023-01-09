import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'hero_section_desktop.dart';
import 'hero_section_mobile.dart';
import 'hero_section_tablet.dart';

class HeroSection extends StatelessWidget with BaseMixin {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String cvDownloadUrl;
  final String buttonText;

  const HeroSection({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.cvDownloadUrl,
    required this.buttonText,
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
  Widget build(BuildContext klcontext) {
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
