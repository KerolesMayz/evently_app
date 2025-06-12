import 'package:evently/screens/authentication/login/login.dart';
import 'package:evently/screens/authentication/reset_password/reset_password.dart';
import 'package:evently/screens/authentication/signup/signup.dart';
import 'package:evently/screens/intro_screen/intro_screen.dart';
import 'package:evently/screens/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

import '../../screens/create_event/create_event.dart';
import '../../screens/onboarding/onboarding.dart';

class RoutesManager {
  static const String introScreen = '/introScreen';
  static const String onboarding = '/onboarding';
  static const String signup = '/signup';
  static const String login = '/login';
  static const String resetPassword = '/resetPassword';
  static const String mainLayout = '/mainLayout';
  static const String createEvent = '/createEvent';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case introScreen:
        return MaterialPageRoute(builder: (context) => const IntroScreen());
      case signup:
        return MaterialPageRoute(builder: (context) => const Signup());
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      case resetPassword:
        return MaterialPageRoute(builder: (context) => const ResetPassword());
      case createEvent:
        return MaterialPageRoute(builder: (context) => const CreateEvent());
      case mainLayout:
        return MaterialPageRoute(builder: (context) => const MainLayout());
      default:
        return null;
    }
  }
}