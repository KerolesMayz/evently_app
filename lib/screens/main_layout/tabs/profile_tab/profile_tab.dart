import 'package:evently/core/widgets/custom_drop_down_menu.dart';
import 'package:evently/screens/main_layout/tabs/profile_tab/widgets/custom_profile_header.dart';
import 'package:evently/screens/main_layout/tabs/profile_tab/widgets/logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
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
                      title: AppLocalizations.of(context)!.language,
                      menuItems: const ['English', 'عربى'],
                      initialSelection: 'English'),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomDropDownMenu(
                      title: AppLocalizations.of(context)!.theme,
                      menuItems: [
                        AppLocalizations.of(context)!.light,
                        AppLocalizations.of(context)!.dark
                      ],
                      initialSelection: AppLocalizations.of(context)!.light),
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
