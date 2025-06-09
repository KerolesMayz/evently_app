import 'package:evently/screens/authentication/login/login.dart';
import 'package:evently/screens/authentication/signup/signup.dart';
import 'package:evently/screens/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String signup = '/signup';
  static const String login = '/login';
  static const String mainLayout = '/mainLayout';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case signup:
        return MaterialPageRoute(builder: (context) => const Signup());
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      case mainLayout:
        return MaterialPageRoute(builder: (context) => const MainLayout());
      default:
        return null;
    }
  }
}