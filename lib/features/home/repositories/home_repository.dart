import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';

import '../models/home_hero.dart';

abstract class HomeRepository {
  Future<HomeHero> fetchHeroData();
  Future<List<HomePost>> getPosts();
  Future<List<HomeWork>> getWorks();
}
