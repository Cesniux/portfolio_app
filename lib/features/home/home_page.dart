import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_mobile.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer.dart';

import '../../widgets/widgets.dart';
import 'sections/hero/hero_section.dart';
import 'widgets/home_page_widgets.dart';

class HomeView extends StatelessWidget with BaseMixin {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarMobile(),
      endDrawer: const SimpleDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(
              title: 'Hi, I am Domantas, Digital Creator',
              subtitle:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
              imageUrl: 'assets/images/profile_image.jpeg',
              cvDownloadUrl: '',
              buttonText: 'Download Resume',
            ),
            PostsSection(sectionTitle: 'Recent Posts'),
            WorksSection(),
            MediaSection(),
          ],
        ),
      ),
    );
  }
}
