import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';

import 'home_repository.dart';

class HomeDummyRepository implements HomeRepository {
  @override
  Future<HomeHero> getHero() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => const HomeHero(
        image: '',
        title: 'title',
        subtitle: 'subtitle',
        buttonText: 'buttonText',
      ),
    );
  }

  @override
  Future<List<HomePost>> getPosts() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => [],
    );
  }

  @override
  Future<List<HomeWork>> getWorks() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => [],
    );
  }
}
