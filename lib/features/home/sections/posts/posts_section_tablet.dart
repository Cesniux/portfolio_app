import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

class PostsSectionTablet extends StatelessWidget {
  final String title;
  final String date;
  final String topicKeywords;
  final String description;
  final String sectionTitle;
  const PostsSectionTablet({
    Key? key,
    required this.title,
    required this.date,
    required this.topicKeywords,
    required this.description,
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
          children: const [
            SimpleSmallTitleText(
              text: 'Recent posts',
            ),
            SimplePostBox.tablet(  title: "yo",
                    date: "2023",
                    description: "hahayo",
                    topicKeywords: "yomata, kantare",),
            // SizedBox(
            //   height: 40,
            // ),
            SimplePostBox.tablet(  title: "yo",
                    date: "2023",
                    description: "hahayo",
                    topicKeywords: "yomata, kantare",),
          ],
        ),
      ),
    );
  }
}
