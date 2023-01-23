import 'package:flutter/material.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class WorksView extends StatelessWidget {
  const WorksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'WorksView',
        style: textTheme.headlineSmall,
      ),
    );
  }
}