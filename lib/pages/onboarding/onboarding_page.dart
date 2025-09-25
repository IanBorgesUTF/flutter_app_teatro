import 'package:flutter/material.dart';
import 'package:flutter_app_teatro/pages/home/home_page.dart';
import 'package:flutter_app_teatro/rules/rules_page.dart';
import 'package:flutter_app_teatro/terms_conditions/terms_conditions_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    const totalPages = 3;
    if (_currentPage < totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: _currentPage == 1 || _currentPage == 2
          ? const NeverScrollableScrollPhysics()
          : const BouncingScrollPhysics(),
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      children: [
        HomePage(onNext: _nextPage),
        TermsConditionsPage(onNext: _nextPage),
        const RulesPage(),
      ],
    );
  }
}
