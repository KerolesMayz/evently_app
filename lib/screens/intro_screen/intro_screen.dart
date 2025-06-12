import 'package:evently/core/routes_manager/routes_manager.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/assets_manager.dart';
import '../../core/widgets/language_switch.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: REdgeInsets.symmetric(horizontal: 16),
        children: [
          Image.asset(AssetsManager.horizontalLogo),
          Image.asset(
            AssetsManager.onboardingFirst,
            width: 321.w,
            height: 343.h,
          ),
          SizedBox(
            height: 37.h,
          ),
          Text(
            AppLocalizations.of(context)!.intro_screen_title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 28.h,
          ),
          Text(
            AppLocalizations.of(context)!.intro_screen_description,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(
            height: 28.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const LanguageSwitch(),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.theme,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const ThemeSwitch(),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
            text: AppLocalizations.of(context)!.lets_start,
            onClick: () {
              Navigator.pushNamed(context, RoutesManager.onboarding);
            },
          )
        ],
      ),
    );
  }
}
