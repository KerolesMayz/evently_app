import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/screens/onboarding/widgets/custom_onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../core/resources/assets_manager.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalHeader: Image.asset(AssetsManager.horizontalLogo),
      dotsDecorator: DotsDecorator(
          color: ColorsManager.dark,
          activeColor: ColorsManager.blue,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.r)),
          activeSize: Size(21.w, 8.h),
          size: Size(8.h, 8.h),
          spacing: REdgeInsets.all(6)),
      rawPages: [
        CustomOnboardingPage(
            title: AppLocalizations.of(context)!.onboarding_1_title,
            imagePath: AssetsManager.onboarding_1,
            description:
                AppLocalizations.of(context)!.onboarding_1_description),
        CustomOnboardingPage(
            title: AppLocalizations.of(context)!.onboarding_2_title,
            imagePath: AssetsManager.onboarding_2,
            description:
                AppLocalizations.of(context)!.onboarding_2_description),
        CustomOnboardingPage(
            title: AppLocalizations.of(context)!.onboarding_3_title,
            imagePath: AssetsManager.onboarding_3,
            description:
                AppLocalizations.of(context)!.onboarding_3_description),
      ],
      showNextButton: true,
      done: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: const BorderSide(width: 1, color: ColorsManager.blue)),
        child: Padding(
          padding: REdgeInsets.all(12),
          child: const Icon(
            Icons.arrow_forward,
            color: ColorsManager.blue,
          ),
        ),
      ),
      next: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: const BorderSide(width: 1, color: ColorsManager.blue)),
        child: Padding(
          padding: REdgeInsets.all(12),
          child: const Icon(
            Icons.arrow_forward,
            color: ColorsManager.blue,
          ),
        ),
      ),
      showBackButton: true,
      back: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: const BorderSide(width: 1, color: ColorsManager.blue)),
        child: Padding(
          padding: REdgeInsets.all(12),
          child: const Icon(
            Icons.arrow_back,
            color: ColorsManager.blue,
          ),
        ),
      ),
      onDone: () {},
    );
  }
}
