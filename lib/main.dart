import 'package:bookley_app/core/utils/app_routes.dart';
import 'package:bookley_app/core/utils/constants.dart';
import 'package:bookley_app/core/utils/setup_service_locator.dart';
import 'package:bookley_app/core/utils/simple_bloc_observer.dart';
import 'package:bookley_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookley_app/features/home/domain/entities/book_entity.dart';
import 'package:bookley_app/features/home/domain/usecases/featch_featured_books_use_case.dart';
import 'package:bookley_app/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:bookley_app/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookley_app/features/home/presentation/manager/newest%20books%20cubit/fetch_newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBooks);
  await Hive.openBox<BookEntity>(kNewestBooks);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FeatchFeaturedBooksUseCase(
                locator.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchNewestBooksCubit(
              FetchNewestBooksUseCase(
                locator.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimapryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
