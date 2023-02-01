import 'package:portfolio_app/features/blog/models/blog_post.dart';

abstract class BlogRepository {
  Future<List<BlogPost>> fetchBlogPosts();
}
