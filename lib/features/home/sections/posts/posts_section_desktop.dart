import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class PostsSectionDesktop extends StatelessWidget with BaseMixin {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final String sectionTitle;
  final List<Post> posts;

  const PostsSectionDesktop({
    Key? key,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    required this.sectionTitle,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 50),
      color: CColor.backgroundColorDifferent,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getMaxWidth(context) * 0.1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SimpleSmallTitleText(
                      text: 'Recent posts',
                    ),
                    TextButton(onPressed: () {}, child: const Text('View all'))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...posts.map((post) {
                    return Expanded(
                      child: SimplePostBox.desktop(
                          title: post.title,
                          date: post.date,
                          topicKeywords: post.topicKeywords,
                          description: post.description),
                    );
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
