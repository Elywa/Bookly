import 'package:bookley_app/core/utils/app_routes.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/presentation/views/home_view.dart';
import 'package:bookley_app/features/splash/presentation/views/splash_view_.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const MyApp());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBooks);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kprimapryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
