import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently/core/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/colors_manager.dart';

class LanguageSwitch extends StatefulWidget {
  const LanguageSwitch({super.key});

  @override
  State<LanguageSwitch> createState() => _LanguageSwitchState();
}

class _LanguageSwitchState extends State<LanguageSwitch> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedToggleSwitch<int>.rolling(
      current: value,
      values: const [0, 1],
      style: ToggleStyle(
          indicatorColor: ColorsManager.blue,
          borderColor: ColorsManager.blue,
          borderRadius: BorderRadius.circular(30.r)),
      onChanged: (i) => setState(() => value = i),
      iconBuilder: (i, _) {
        final flag = i == 0 ? AssetsManager.en : AssetsManager.eg;
        return ClipOval(
            child: SvgPicture.asset(
          flag,
          fit: BoxFit.cover,
          height: 30.r,
          width: 30.r,
        ));
      },
    );
  }
}
