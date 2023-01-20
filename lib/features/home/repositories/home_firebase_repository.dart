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
  Future<List<HomePost>> fetchPostsData() async {
    var response = await firebaseService.postsRef
        .orderBy('timeStamp', descending: true)
        .limit(2)
        .get();

    List<HomePost> posts = [];

    for (var element in response.docs) {
      Map<String, dynamic> data = element.data() as Map<String, dynamic>;
      posts.add(
        HomePost(
          title: data['title'],
          date: data['date'],
          topicKeywords: data['topicKeywords'],
          description: data['description'],
          sectionTitle: data['sectionTitle'],
        ),
      );
    }
    return posts;
  }

  @override
  Future<List<HomeWork>> fetchWorksData() {
    throw UnimplementedError();
  }
}
