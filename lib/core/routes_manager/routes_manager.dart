import 'package:evently/screens/authentication/login/login.dart';
import 'package:evently/screens/authentication/signup/signup.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String signup = '/signup';
  static const String login = '/login';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case signup:
        return MaterialPageRoute(builder: (context) => const Signup());
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      default:
        return null;
    }
  }
}