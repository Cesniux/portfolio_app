import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/blocs/home_bloc.dart';
import 'package:portfolio_app/features/home/repositories/home_firebase_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_mobile.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer.dart';

import 'sections/hero/hero_section.dart';
import 'sections/media/media_section.dart';
import 'sections/posts/posts_section.dart';
import 'sections/works/works_section.dart';

class HomeView extends StatelessWidget with BaseMixin {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        homeRepository: HomeFirebaseRepository(
          firebaseService: context.read<FirebaseService>(),
        ),
      )..add(HomeFetch()),
      child: Scaffold(
        appBar: const CustomAppBarMobile(),
        endDrawer: const SimpleDrawer(),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading || state is HomeInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeSuccess) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    HeroSection(
                      data: state.homeHero,
                    ),
                    PostsSection(
                      sectionTitle: 'Recent Posts',
                      data: state.homePosts,
                    ),
                    const WorksSection(),
                    const MediaSection(),
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text('Error@!'),
              );
            }
          },
        ),
      ),
    );
  }
}
