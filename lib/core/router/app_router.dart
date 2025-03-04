import 'package:go_router/go_router.dart';
import '../../modules/user/user_view.dart';
import '../../modules/splash/splash_view.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const UserView(),
    ),
    // Diğer rotalar burada tanımlanabilir
  ],
);
