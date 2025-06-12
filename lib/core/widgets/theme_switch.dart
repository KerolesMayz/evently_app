import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../resources/colors_manager.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  String value = 'light';

  @override
  Widget build(BuildContext context) {
    ConfigProvider configProvider = Provider.of<ConfigProvider>(context);
    return AnimatedToggleSwitch<String>.rolling(
      current: value,
      values: const ["light", "dark"],
      style: const ToggleStyle(
        indicatorColor: ColorsManager.blue,
        borderColor: ColorsManager.blue,
      ),
      onChanged: (i) => setState(() {
        value = i;
        if (value == "dark") {
          print(value);
          configProvider.changeAppTheme(ThemeMode.dark);
        } else {
          configProvider.changeAppTheme(ThemeMode.light);
        }
      }),
      iconList: [
        value == 'light'
            ? Icon(
                Icons.light_mode_rounded,
                color: Theme.of(context).colorScheme.primary,
                size: 24.r,
              )
            : Icon(
                Icons.light_mode_rounded,
                color: ColorsManager.blue,
                size: 24.r,
              ),
        value == 'dark'
            ? Icon(
                Icons.dark_mode_rounded,
                color: Theme.of(context).colorScheme.primary,
                size: 24.r,
              )
            : Icon(
                Icons.dark_mode_rounded,
                color: ColorsManager.blue,
                size: 24.r,
              ),
      ],
    );
  }
}
