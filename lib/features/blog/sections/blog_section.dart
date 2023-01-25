import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/blog/widgets/blog_post_box.dart';
import 'package:portfolio_app/widgets/media/media_section.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class BlogSection extends StatelessWidget with BaseMixin {
  final double horizontalPaddingMultiplier;

  const BlogSection.mobile({
    Key? key,
    this.horizontalPaddingMultiplier = 0.0,
  }) : super(key: key);
  const BlogSection.tablet({
    Key? key,
    this.horizontalPaddingMultiplier = 0.1,
  }) : super(key: key);
  const BlogSection.desktop({
    Key? key,
    this.horizontalPaddingMultiplier = 0.15,
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
                padding: const EdgeInsets.only(top: 100, bottom: 56, left: 27),
                child: Text(
                  'Blog',
                  style: textTheme.headlineLarge,
                ),
              ),
            ),
            const BlogPostBox(
              title: 'Very Good',
              date: '22 Jan 2023',
              topicKeywords: 'Snowboard, Swimming',
              description:
                  'Amet minim Amet minim Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam conamet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
            ),
            const BlogPostBox(
              title: 'Very Good',
              date: '22 Jan 2023',
              topicKeywords: 'Snowboard, Swimming',
              description:
                  'Amet minim Amet minim Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam conamet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
            ),
            const BlogPostBox(
              title: 'Very Good',
              date: '22 Jan 2023',
              topicKeywords: 'Snowboard, Swimming',
              description:
                  'Amet minim Amet minim Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam conamet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
            ),
            const BlogPostBox(
              title: 'Very Good',
              date: '22 Jan 2023',
              topicKeywords: 'Snowboard, Swimming',
              description:
                  'Amet minim Amet minim Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam conamet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
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
