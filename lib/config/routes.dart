import 'package:go_router/go_router.dart';
import 'package:todo_chat/auth/signin_screen.dart';
import 'package:todo_chat/auth/signup_screen.dart';
import 'package:todo_chat/home/home_screen.dart';

final routes = GoRouter(initialLocation: SigninScreen.url, routes: [
  GoRoute(
    path: HomeScreen.url,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: SigninScreen.url,
    builder: (context, state) => const SigninScreen(),
  ),
  GoRoute(
    path: SignupScreen.url,
    builder: (context, state) => const SignupScreen(),
  ),
]);
