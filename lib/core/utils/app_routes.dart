import 'package:bookley_app/features/home/presentation/views/home_view.dart';
import 'package:bookley_app/features/splash/presentation/views/splash_view_.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const homeroute = '/homeView';
  static const bookDetailsroute = '/bookDetailsView';
  static const searchViewroute = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeroute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
