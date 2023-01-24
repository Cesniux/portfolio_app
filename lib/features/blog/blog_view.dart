import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/sections/media/media_section.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

import 'widgets/blog_post_box.dart';

class BlogView extends StatelessWidget with BaseMixin {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getMaxWidth(context) * 0.18),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 40, left: 27),
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
