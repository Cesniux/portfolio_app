import 'package:flutter/material.dart';
import 'package:portfolio_app/base_mixin.dart';
import 'package:portfolio_app/features/blog/models/blog_post.dart';
import 'package:portfolio_app/features/blog/widgets/blog_post_box.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';

class BlogSection extends StatelessWidget with BaseMixin {
  final double horizontalPaddingMultiplier;
  final List<BlogPost> postList;

  const BlogSection.mobile({
    Key? key,
    this.horizontalPaddingMultiplier = 0.01,
    required this.postList,
  }) : super(key: key);
  const BlogSection.tablet({
    Key? key,
    this.horizontalPaddingMultiplier = 0.1,
    required this.postList,
  }) : super(key: key);
  const BlogSection.desktop({
    Key? key,
    this.horizontalPaddingMultiplier = 0.15,
    required this.postList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getMaxWidth(context) * horizontalPaddingMultiplier),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top: getMaxHeight(context) * 0.1, bottom: 56, left: 27),
                child: Text(
                  'Blog',
                  style: getTextTheme(context).headlineLarge,
                ),
              ),
            ),
            ...postList.map(
              (post) => BlogPostBox(
                  date: post.date,
                  description: post.description,
                  title: post.title,
                  topicKeywords: post.topicKeywords),
            ),
            const SizedBox(
              height: 50,
            ),
            const MediaSection(),
          ],
        ),
      ),
    );
  }
}
