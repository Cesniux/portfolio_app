import 'package:flutter/material.dart';
import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class PostsSectionMobile extends StatelessWidget {
 
  final List<Post> posts;
  const PostsSectionMobile({
    Key? key,
    required this.posts,
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
              text: "Recent Postssssss",
            ),
            ...posts.map((post) => SimplePostBox.mobile(
                title: post.title,
                date: post.date,
                topicKeywords: post.topicKeywords,
                description: post.description))
          ],
        ),
      ),
    );
  }
}
