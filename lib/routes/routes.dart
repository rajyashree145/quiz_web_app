
import 'package:go_router/go_router.dart';
import 'package:quiz_web_app/view/screens/home_screen.dart';

class WebAppRoutes {
  static const String home = '/quiz-app/home';

  static final GoRouter router = GoRouter(
  initialLocation: home,
  routes: [
  GoRoute(
  path: home,
  builder: (context, state) => HomeScreen(),
  ),
  ]);
  }