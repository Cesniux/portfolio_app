import 'package:portfolio_app/features/home/models/home_hero.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/features/home/models/home_work.dart';
import 'package:portfolio_app/features/home/repositories/home_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';

class HomeFirebaseRepository implements HomeRepository {
  final FirebaseService firebaseService;
  HomeFirebaseRepository({required this.firebaseService});

  @override
  Future<HomeHero> getHero() async {
    // var response = await FirebaseFirestore.instance
    //     .collection('hero')
    //     .doc('C9yTZA2dQQDUrrrctNeB')
    //     .get();

    // Map<String, dynamic>? heroData = response.data();

    throw UnimplementedError();
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
