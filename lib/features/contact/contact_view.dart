import 'package:flutter/material.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ContactView',
        style: textTheme.labelLarge,
      ),
    );
  }
}
