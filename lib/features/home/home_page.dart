import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/blocs/home_bloc.dart';
import 'package:portfolio_app/features/home/repositories/home_dummy_repository.dart';
import 'package:portfolio_app/features/home/repositories/home_firebase_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_mobile.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer.dart';

import '../../widgets/widgets.dart';
import 'sections/hero/hero_section.dart';
import 'widgets/home_page_widgets.dart';

class HomeView extends StatelessWidget with BaseMixin {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        homeRepository: HomeFirebaseRepository(
          firebaseService: context.read<FirebaseService>(),
        ),
        homeOfflineRepository: HomeDummyRepository(),
      ),
      child: Scaffold(
        appBar: const CustomAppBarMobile(),
        endDrawer: const SimpleDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              HeroSection(),
              PostsSection(sectionTitle: 'Recent Posts'),
              WorksSection(),
              MediaSection(),
            ],
          ),
        ),
      ),
    );
  }
}
