import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/repositories/home_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';

import '../models/home_post.dart';
import '../models/home_work.dart';

class HomeFirebaseRepository implements HomeRepository {
  final FirebaseService firebaseService;
  HomeFirebaseRepository({required this.firebaseService});

  @override
  Future<HomeHero> fetchHeroData() async {
    var response =
        await firebaseService.heroRef.doc('C9yTZA2dQQDUrrrctNeB').get();
    Map<String, dynamic>? heroData = response.data() as Map<String, dynamic>?;
    return HomeHero.fromJson(heroData!);
  }

  @override
  Future<List<HomePost>> getPosts() {
    throw UnimplementedError();
  }

  @override
  Future<List<HomeWork>> getWorks() {
    throw UnimplementedError();
  }
}
