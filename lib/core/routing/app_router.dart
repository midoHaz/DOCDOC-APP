import 'package:advanced_sessions/core/di/dependancy_injection.dart';
import 'package:advanced_sessions/core/routing/routes.dart';
import 'package:advanced_sessions/features/home/ui/home_screen.dart';
import 'package:advanced_sessions/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_sessions/features/login/ui/login_screen.dart';
import 'package:advanced_sessions/features/onboarding/onboarding_screen.dart';
import 'package:advanced_sessions/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:advanced_sessions/features/sign_up/ui/sign_up_scren.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
