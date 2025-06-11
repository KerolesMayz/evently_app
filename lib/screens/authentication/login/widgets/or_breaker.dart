import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_manager.dart';

class OrBreaker extends StatelessWidget {
  const OrBreaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Divider(
          thickness: 1.h,
          color: ColorsManager.blue,
          indent: 26.w,
          endIndent: 16.w,
        )),
        Text(
          AppLocalizations.of(context)!.or,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: ColorsManager.blue),
        ),
        Expanded(
            child: Divider(
          thickness: 1.h,
          color: ColorsManager.blue,
          indent: 16.w,
          endIndent: 26.w,
        )),
      ],
    );
  }
}
