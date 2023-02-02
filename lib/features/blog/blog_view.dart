import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/blog/bloc/blog_bloc.dart';
import 'package:portfolio_app/features/blog/bloc/blog_event.dart';
import 'package:portfolio_app/features/blog/bloc/blog_state.dart';
import 'package:portfolio_app/features/blog/repositories/blog_firebase_repository.dart';
import 'package:portfolio_app/features/blog/sections/blog_section.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

class BlogView extends StatelessWidget with BaseMixin {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlogBloc(
        blogRepository: BlogFirebaseRepository(
          firebaseService: context.read<FirebaseService>(),
        ),
      )..add(BlogFetch()),
      child: BlocBuilder<BlogBloc, BlogState>(
        builder: (context, state) {
          if (state is BlogInitial || state is BlogLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is BlogLoaded) {
            return LayoutBuilder(
              builder: (context, constrains) {
                final screenType = getScreenType(getMaxWidth(context));
                switch (screenType) {
                  case ScreenType.mobile:
                    return BlogSection.mobile(
                      postList: state.postList,
                    );

                  case ScreenType.tablet:
                    return BlogSection.tablet(
                      postList: state.postList,
                    );

                  case ScreenType.desktop:
                    return BlogSection.desktop(
                      postList: state.postList,
                    );
                }
              },
            );
          }
          return const Center(
            child: Text('error, sorry'),
          );
        },
      ),
    );
  }
}
