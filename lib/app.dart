import 'package:flutter/material.dart';
import 'package:quiz_web_app/routes/routes.dart';
import 'package:quiz_web_app/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: AppTheme.lightTheme,
      routerConfig: WebAppRoutes.router, // Web uses GoRouter
    );
  }
}
