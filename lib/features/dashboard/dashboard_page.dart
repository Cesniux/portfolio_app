import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/blog/blog_view.dart';
import 'package:portfolio_app/features/contact/contact_view.dart';
import 'package:portfolio_app/features/home/home_view.dart';
import 'package:portfolio_app/features/works/works_view.dart';
import 'package:portfolio_app/widgets/app_bar/custom_appbar.dart';
import 'package:portfolio_app/widgets/simple_drawer/simple_drawer.dart';

class DashboardPage extends StatelessWidget with BaseMixin {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: const SimpleDrawer(),
        body: TabBarView(children: const [
          HomeView(),
          BlogView(),
          WorksView(),
          ContactView(),
        ]),
      ),
    );
  }
}
