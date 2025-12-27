import 'package:go_router/go_router.dart';
import 'package:ibank/features/auth/presentation/pages/changedpass_success_screen.dart';
import 'package:ibank/features/auth/presentation/pages/changepass_screend.dart';
import 'package:ibank/features/auth/presentation/pages/forgotpass_screen.dart';
import 'package:ibank/features/auth/presentation/pages/login_screen.dart';
import 'package:ibank/features/auth/presentation/pages/signup_screen.dart';
import 'package:ibank/features/auth/presentation/pages/verifycode_screen.dart';
import 'package:ibank/features/home/presentation/pages/home_screen.dart';
import 'package:ibank/features/splash/splash_screen.dart';

class RoutesData {
  //
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotpassword = '/forgotpassword';
  static const String verifycode = '/verifycode';
  static const String changepassword = '/changepassword';
  static const String changedpasssuccess = '/changedpasssuccess';
  static const String home = '/home';

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
      // forgot password screen
      GoRoute(
        path: forgotpassword,
        builder: (context, state) => const ForgotpassScreen(),
      ),
      // verify code screen
      GoRoute(
        path: verifycode,
        builder: (context, state) => const VerifycodeScreen(),
      ),
      // change password screen
      GoRoute(
        path: changepassword,
        builder: (context, state) => const ChangepassScreend(),
      ),
      // changed password success screen
      GoRoute(
        path: changedpasssuccess,
        builder: (context, state) => const ChangedpassSuccessScreen(),
      ),
      // home screen
      GoRoute(path: home, builder: (context, state) => const HomeScreen()),
    ],
  );
}
