import 'package:flutter/material.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class PostsSectionMobile extends StatelessWidget {
  final String sectionTitle;
  final List<HomePost> posts;
  const PostsSectionMobile({
    Key? key,
    required this.posts,
    required this.sectionTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 50),
      color: CColor.backgroundColorDifferent,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SimpleSmallTitleText(
              text: sectionTitle,
            ),
            ...posts.map((post) => HomePostBox.mobile(
                  title: post.title,
                  date: post.date,
                  topicKeywords: post.topicKeywords,
                  description: post.description,
                  isInBlogView: false,
                ))
          ],
        ),
      ),
    );
  }
}
