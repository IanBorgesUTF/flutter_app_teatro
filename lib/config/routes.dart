import 'package:flutter/material.dart';
import 'package:flutter_app_teatro/pages/home/home_page.dart';
import 'package:flutter_app_teatro/pages/onboarding/onboarding_page.dart';
import 'package:flutter_app_teatro/pages/splash/splash_screen.dart';
import 'package:flutter_app_teatro/rules/rules_page.dart';
import 'package:flutter_app_teatro/terms_conditions/terms_conditions_page.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homePage = '/home_page';
  static const String termsConditionsPage = '/terms_conditions_page';
  static const String rulesPage = '/rules_page';
  static const String onboardingPage = '/onboarding_page';

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
      case termsConditionsPage:
        return MaterialPageRoute(
          builder: (_) => const TermsConditionsPage(),
        );
      case rulesPage:
        return MaterialPageRoute(
          builder: (_) => const RulesPage(),
        );
      case onboardingPage:
        return MaterialPageRoute(
          builder: (_) => const OnboardingPage(),
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
