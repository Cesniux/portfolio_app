import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/blocs/home_bloc.dart';
import 'package:portfolio_app/features/home/home_view.dart';
import 'package:portfolio_app/features/home/repositories/home_firebase_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar_mobile.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer.dart';

import 'home/sections/hero/hero_section.dart';
import 'home/sections/media/media_section.dart';
import 'home/sections/posts/posts_section.dart';
import 'home/sections/works/works_section.dart';

class HomePage extends StatelessWidget with BaseMixin {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        homeRepository: HomeFirebaseRepository(
          firebaseService: context.read<FirebaseService>(),
        ),
      )..add(HomeFetch()),
      child: const Scaffold(
        appBar: CustomAppBarMobile(),
        endDrawer: SimpleDrawer(),
        body: HomeView(),
      ),
    );
  }
}

