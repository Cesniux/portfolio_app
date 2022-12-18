import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

import 'features/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Heebo',
        textTheme: textTheme,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: CColor.backgroundColorBright,
      ),
      home: const HomeView(),
    );
  }
}
