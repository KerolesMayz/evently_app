import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/colors_manager.dart';

class ChooseEventLocationButton extends StatelessWidget {
  const ChooseEventLocationButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: REdgeInsets.all(8),
          child: Row(
            children: [
              Card(
                  color: ColorsManager.blue,
                  child: Padding(
                    padding: REdgeInsets.all(12),
                    child: Icon(
                      Icons.my_location_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  )),
              const SizedBox(
                width: 8,
              ),
              Text(AppLocalizations.of(context)!.choose_event_location,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 16.sp)),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorsManager.blue,
                size: 15.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
