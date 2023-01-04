import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/features/home/models/post.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';


class PostsSectionMobile extends StatelessWidget {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final String sectionTitle;
  final List<Post> posts;
  const PostsSectionMobile({
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
        child: Column(
          children: [
            SimpleSmallTitleText(
              text: sectionTitle,
            ),
            StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('posts').snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  print('Hello');
                  print(snapshot);
                  if (snapshot.hasData) {
                    final snap = snapshot.data!.docs;

                    return ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Text(snap[index]['title']);
                        // return SimplePostBox.mobile(
                        //   title: snap[index]['title'],
                        //   date: snap[index]['date'],
                        //   description: snap[index]['descprition'],
                        //   topicKeywords: snap[index]['topicKeywords'],
                        // );
                      },
                    );
                  } else {
                    return const SizedBox();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
