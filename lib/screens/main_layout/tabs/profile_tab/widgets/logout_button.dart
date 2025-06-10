import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/colors_manager.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(backgroundColor: ColorsManager.red),
        child: Row(
          children: [
            const Icon(Icons.logout_rounded),
            SizedBox(
              width: 8.w,
            ),
            const Text('Logout')
          ],
        ));
  }
}
