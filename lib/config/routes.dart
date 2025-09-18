import 'package:flutter/material.dart';
import 'package:flutter_app_teatro/pages/home/home_page.dart';
import 'package:flutter_app_teatro/pages/splash/splash_screen.dart';
import 'package:flutter_app_teatro/rules/rules_page.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homePage = '/home_page';
  static const String rulesPage = '/rules_page';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case rulesPage:
        return MaterialPageRoute(
          builder: (_) => const RulesPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Rota não encontrada: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
