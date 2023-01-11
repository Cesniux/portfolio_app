import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/features/home/models/work.dart';

import '../models/hero_data.dart';

abstract class HomeRepository {
  Future<HeroData> getHero();
  Future<List<Post>> getPosts();
  Future<List<Work>> getWorks();
}
