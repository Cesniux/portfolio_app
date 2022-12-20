import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';

import '../../widgets/widgets.dart';
import 'widgets/home_page_widgets.dart';

class HomeView extends StatelessWidget with BaseExtension {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroMainWidget(),
            RecentPostsWidget(),
            FeaturedWorksWidget(),
            SocialMediaCopyrightBox(),
          ],
        ),
      ),
    );
  }
}
