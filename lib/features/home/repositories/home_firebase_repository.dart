import 'package:portfolio_app/features/home/models/hero_data.dart';
import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/features/home/models/work.dart';
import 'package:portfolio_app/features/home/repositories/home_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';

class HomeFirebaseRepository implements HomeRepository {
  final FirebaseService firebaseService;
  HomeFirebaseRepository({required this.firebaseService});

  @override
  Future<HeroData> getHero() async {
    // var response = await FirebaseFirestore.instance
    //     .collection('hero')
    //     .doc('C9yTZA2dQQDUrrrctNeB')
    //     .get();

    // Map<String, dynamic>? heroData = response.data();

    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts() {
    throw UnimplementedError();
  }

  @override
  Future<List<Work>> getWorks() {
    throw UnimplementedError();
  }
}
