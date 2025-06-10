import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChooseTime extends StatelessWidget {
  const ChooseTime(
      {super.key,
      required this.title,
      required this.action,
      required this.iconPath,
      required this.onActionTap});

  final String title;
  final String action;
  final String iconPath;
  final VoidCallback onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.onSecondary, BlendMode.srcIn),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(title, style: Theme.of(context).textTheme.displayMedium),
        const Spacer(),
        InkWell(
          onTap: onActionTap,
          child: Text(action,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 16.sp)),
        )
      ],
    );
  }
}
