import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';

import '../../widgets/widgets.dart';
import 'sections/hero/hero_section.dart';
import 'widgets/home_page_widgets.dart';

class HomeView extends StatelessWidget with BaseMixin {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(
              title: 'John Roe',
              subtitle: 'Hey',
              imageUrl: 'Hello',
              cvDownloadUrl: 'Sup',
            ),
            PostsSection(),
            WorksSection(),
            MediaSection(),
          ],
        ),
      ),
    );
  }
}
