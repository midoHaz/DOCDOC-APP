import 'package:advanced_sessions/core/routing/routes.dart';
import 'package:advanced_sessions/features/login/ui/login_screen.dart';
import 'package:advanced_sessions/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Defined For ${settings.name}"),
            ),
          ),
        );
    }
  }
}
