import 'package:bookley_app/core/utils/colors_assets.dart';
import 'package:bookley_app/features/home/presentation/views/home_view.dart';
import 'package:bookley_app/features/splash/presentation/views/splash_view_.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.splashViewRouteName,
      routes: {
        SplashView.splashViewRouteName: (context) => const SplashView(),
        HomeView.homeViewRouteName: (context) => const HomeView()
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimapryColor,
      ),
      home: const SplashView(),
    );
  }
}
