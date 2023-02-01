import 'package:portfolio_app/features/blog/models/blog_post.dart';

abstract class BlogState {}

class BlogInitial extends BlogState {}

class BlogLoading extends BlogState {}

class BlogLoaded extends BlogState {
  final List<BlogPost> postList;

  BlogLoaded({required this.postList});
}

class BlogError extends BlogState {
  final String error;

  BlogError(this.error);
}
