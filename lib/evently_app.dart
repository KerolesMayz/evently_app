import 'package:evently/config/theme_manager/theme_manager.dart';
import 'package:evently/core/extensions/context_extension.dart';
import 'package:evently/core/routes_manager/routes_manager.dart';
import 'package:evently/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var configProvider = Provider.of<ConfigProvider>(context);
    return ScreenUtilInit(
        designSize: Size(context.width, context.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: const [Locale('en'), Locale('ar')],
              theme: ThemeManager.lightTheme,
              darkTheme: ThemeManager.darkTheme,
              onGenerateRoute: RoutesManager.router,
              initialRoute: RoutesManager.introScreen,
              themeMode: configProvider.currentTheme,
              locale: configProvider.language,
              debugShowCheckedModeBanner: false,
            ));
  }
}
