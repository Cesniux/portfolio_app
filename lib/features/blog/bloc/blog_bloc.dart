import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/features/blog/bloc/blog_event.dart';
import 'package:portfolio_app/features/blog/bloc/blog_state.dart';
import 'package:portfolio_app/features/blog/models/blog_post.dart';
import 'package:portfolio_app/features/blog/repositories/blog_firebase_repository.dart';
import 'package:portfolio_app/features/blog/repositories/blog_repository.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final BlogRepository blogRepository;
  BlogBloc({required this.blogRepository}) : super(BlogInitial()) {
    on<BlogFetch>(_onBlogFetch);
  }

  Future<void> _onBlogFetch(BlogFetch event, Emitter<BlogState> emit) async {
    emit(BlogLoading());
   
    var postList = await blogRepository.fetchBlogPosts();
    emit(BlogLoaded(postList: postList));
  }
}
