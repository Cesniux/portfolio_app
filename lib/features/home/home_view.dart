import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/features/home/blocs/home_bloc.dart';
import 'package:portfolio_app/features/home/repositories/home_firebase_repository.dart';
import 'package:portfolio_app/features/home/sections/hero/hero_section.dart';
import 'package:portfolio_app/features/home/sections/media/media_section.dart';
import 'package:portfolio_app/features/home/sections/posts/posts_section.dart';
import 'package:portfolio_app/features/home/sections/works/works_section.dart';
import 'package:portfolio_app/service/firebase_service.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeBloc(
              homeRepository: HomeFirebaseRepository(
                firebaseService: context.read<FirebaseService>(),
              ),
            )..add(HomeFetch()),
        child: BlocBuilder<HomeBloc, HomeState>(
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
                    WorksSection(data: state.homeWorks),
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
        ));
  }
}
