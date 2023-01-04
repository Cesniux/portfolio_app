import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/base_extension.dart';
import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/features/home/sections/posts/posts_section_desktop.dart';
import 'package:portfolio_app/utils/screen_sizes.dart';

import 'posts_section_mobile.dart';
import 'posts_section_tablet.dart';

class PostsSection extends StatelessWidget with BaseMixin {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final String sectionTitle;
  const PostsSection({
    Key? key,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
    required this.sectionTitle,
  }) : super(key: key);

  Future<List<Post>> getPosts() async {
    var response = await FirebaseFirestore.instance.collection('posts').get();
    List<Post> posts = [];
    // print(posts);

    for (var element in response.docs) {
      Map<String, dynamic> data = element.data();
      posts.add(
        Post(
          title: data['title'],
          date: data['date'],
          topicKeywords: data['topicKeywords'],
          description: data['description'],
          sectionTitle: data['sectionTitle'],
        ),
      );
    }
    // print(posts);
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPosts(),
        initialData: const [],
        builder: (context, snapshot) {
          // print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.error != null) {
            return const Text('Error!');
          }

          return LayoutBuilder(
            builder: (context, constrains) {
              final screenType = getScreenType(constrains.maxWidth);
              switch (screenType) {
                case ScreenType.mobile:
                  return PostsSectionMobile(
                    title: title,
                    date: date,
                    topicKeywords: topicKeywords,
                    description: description,
                    sectionTitle: sectionTitle,
                    posts: snapshot.data as List<Post>,
                  );
                case ScreenType.tablet:
                  return PostsSectionTablet(
                    title: title,
                    date: date,
                    topicKeywords: topicKeywords,
                    description: description,
                    sectionTitle: sectionTitle,
                    posts: snapshot.data as List<Post>,
                  );
                case ScreenType.desktop:
                  return PostsSectionDesktop(
                    title: title,
                    date: date,
                    topicKeywords: topicKeywords,
                    description: description,
                    sectionTitle: sectionTitle,
                  );
              }
            },
          );
        });
  }
}
