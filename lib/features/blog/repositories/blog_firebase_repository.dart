import 'package:portfolio_app/features/blog/models/blog_post.dart';
import 'package:portfolio_app/features/blog/repositories/blog_repository.dart';
import 'package:portfolio_app/service/firebase_service.dart';

class BlogFirebaseRepository implements BlogRepository {
  final FirebaseService firebaseService;

  BlogFirebaseRepository({required this.firebaseService});

  @override
  Future<List<BlogPost>> fetchBlogPosts() async {
    final List<BlogPost> postList = [];
    var response = await firebaseService.postsRef
        .orderBy('timeStamp', descending: true)
        .get();
    for (var element in response.docs) {
      Map<String, dynamic> data = element.data() as Map<String, dynamic>;
      postList.add(BlogPost.fromJson(data));
    }
    return postList;
  }
}
