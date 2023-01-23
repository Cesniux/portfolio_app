import 'package:flutter/material.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class BlogView extends StatelessWidget {
  const BlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'BlogView',
        style: textTheme.displayMedium,
      ),
    );
  }
}
