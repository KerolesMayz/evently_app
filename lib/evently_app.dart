import 'package:evently/config/theme_manager/theme_manager.dart';
import 'package:evently/core/extensions/context_extension.dart';
import 'package:evently/core/routes_manager/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(context.width, context.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
              theme: ThemeManager.lightTheme,
              darkTheme: ThemeManager.darkTheme,
              onGenerateRoute: RoutesManager.router,
              initialRoute: RoutesManager.login,
              themeMode: ThemeMode.dark,
              debugShowCheckedModeBanner: false,
            ));
  }
}
