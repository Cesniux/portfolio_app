import 'package:portfolio_app/features/home/models/hero_data.dart';
import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/features/home/models/work.dart';

import 'home_repository.dart';

class HomeDummyRepository implements HomeRepository {
  @override
  Future<HeroData> getHero() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => const HeroData(
        image: '',
        title: 'title',
        subtitle: 'subtitle',
        buttonText: 'buttonText',
      ),
    );
  }

  @override
  Future<List<Post>> getPosts() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => [],
    );
  }

  @override
  Future<List<Work>> getWorks() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () => [],
    );
  }
}
