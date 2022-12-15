import 'package:flutter/material.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/widgets/widgets.dart';

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
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: CColor.backgroundColorBright,
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    offset: const Offset(-5.0, 8),
                    color: CColor.backgroundColorDifferent,
                    spreadRadius: 3,
                  )
                ]),
                child: ClipOval(
                    child: Image.asset(
                  'assets/images/profile_image.jpeg',
                  width: 180,
                  height: 180,
                  fit: BoxFit.cover,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
