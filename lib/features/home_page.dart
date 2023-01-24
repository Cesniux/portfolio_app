import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/blog/blog_view.dart';
import 'package:portfolio_app/features/contact/contact_view.dart';
import 'package:portfolio_app/features/home/blocs/home_bloc.dart';
import 'package:portfolio_app/features/home/home_view.dart';
import 'package:portfolio_app/features/home/repositories/home_firebase_repository.dart';
import 'package:portfolio_app/features/works/works_view.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer.dart';

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
      child: const DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: CustomAppBar(),
          endDrawer: SimpleDrawer(),
          body: TabBarView(children: [
            HomeView(),
            BlogView(),
            WorksView(),
            ContactView(),
          ]),
        ),
      ),
    );
  }
}
