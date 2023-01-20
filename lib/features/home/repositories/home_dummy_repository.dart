import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';

import 'home_repository.dart';

class HomeDummyRepository implements HomeRepository {
  @override
  Future<HomeHero> fetchHeroData() {
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
  Future<List<HomePost>> fetchPostsData() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => [],
    );
  }

  @override
  Future<List<HomeWork>> fetchWorksData() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => [],
    );
  }
}
