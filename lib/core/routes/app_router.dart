import 'package:flutter/material.dart';
import 'package:forfun/core/routes/routes.dart';
import 'package:forfun/features/home/ui/home_screen.dart';
import 'package:forfun/features/login/ui/login_screen.dart';
import 'package:forfun/features/onBoarding/ui/onBoarding_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoarding :
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => Scaffold());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}