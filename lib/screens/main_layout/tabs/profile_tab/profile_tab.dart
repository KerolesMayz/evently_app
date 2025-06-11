import 'package:evently/core/widgets/custom_drop_down_menu.dart';
import 'package:evently/providers/config_provider.dart';
import 'package:evently/screens/main_layout/tabs/profile_tab/widgets/custom_profile_header.dart';
import 'package:evently/screens/main_layout/tabs/profile_tab/widgets/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var configProvider = Provider.of<ConfigProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomProfileHeader(
            userName: 'Keroles Mayz',
            email: 'kerolesmayz.route@gmail.com',
          ),
          Expanded(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomDropDownMenu(
                      onSelected: (value) {
                        value == 'عربى'
                            ? configProvider
                                .changeAppLanguage(const Locale('ar'))
                            : configProvider
                                .changeAppLanguage(const Locale('en'));
                      },
                      title: AppLocalizations.of(context)!.language,
                      menuItems: const ['English', 'عربى'],
                      initialSelection:
                          configProvider.isEnglish ? 'English' : 'عربى'),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomDropDownMenu(
                      onSelected: (value) {
                        value == AppLocalizations.of(context)!.dark
                            ? configProvider.changeAppTheme(ThemeMode.dark)
                            : configProvider.changeAppTheme(ThemeMode.light);
                      },
                      title: AppLocalizations.of(context)!.theme,
                      menuItems: [
                        AppLocalizations.of(context)!.light,
                        AppLocalizations.of(context)!.dark
                      ],
                      initialSelection: configProvider.isDark
                          ? AppLocalizations.of(context)!.dark
                          : AppLocalizations.of(context)!.light),
                  const Spacer(),
                  LogoutButton(onPressed: () {}),
                  SizedBox(
                    height: 5.h,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
