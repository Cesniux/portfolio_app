import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/models/home_post.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class PostsSectionDesktop extends StatelessWidget with BaseMixin {
  final String sectionTitle;
  final List<HomePost> posts;

  const PostsSectionDesktop({
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getMaxWidth(context) * 0.1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SimpleSmallTitleText(
                      text: sectionTitle,
                    ),
                    TextButton(onPressed: () {}, child: const Text('View all'))
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
