import 'package:go_router/go_router.dart';
import 'package:ibank/features/auth/presentation/pages/login_screen.dart';
import 'package:ibank/features/auth/presentation/pages/signup_screen.dart';
import 'package:ibank/features/splash/splash_screen.dart';

class RoutesData {
  //
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';

  //
  static final routes = GoRouter(
    initialLocation: splash,
    routes: [
      // spash screen
      GoRoute(path: splash, builder: (context, state) => const SplashScreen()),
      // login screen
      GoRoute(path: login, builder: (context, state) => const LoginScreen()),
      // signup screen
      GoRoute(path: signup, builder: (context, state) => const SignupScreen()),
    ],
  );
}
