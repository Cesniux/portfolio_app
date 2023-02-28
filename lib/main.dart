import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/features/home/repositories/home_dummy_repository.dart';
import 'package:portfolio_app/features/work_detail/page/work_detail_page.dart';
import 'package:portfolio_app/features/work_detail/work_detail_view.dart';
import 'package:portfolio_app/service/firebase_service.dart';
import 'package:portfolio_app/style/res/constants.dart';
import 'package:portfolio_app/style/theme/text_theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => FirebaseService(),
        ),
        RepositoryProvider(
          create: (context) => HomeDummyRepository(),
        ),
      ],
      child: ScreenUtilInit(
          // minTextAdapt: true,

          designSize: const Size(360, 690),
          minTextAdapt: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                fontFamily: 'Heebo',
                textTheme: textTheme,
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: CColor.white,
              ),
              home: const WorkDetailView(),
            );
          }),
    );
  }
}
