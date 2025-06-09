import 'package:evently/core/extensions/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/colors_manager.dart';

class EventDateWidget extends StatelessWidget {
  const EventDateWidget({super.key, required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        color: ColorsManager.offWhite.withOpacity(0.8),
        child: Padding(
          padding: REdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                date.day.toString(),
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.bold, height: 1),
              ),
              Text(
                date.monthName,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.bold, height: 1, fontSize: 14.sp),
              )
            ],
          ),
        ));
  }
}
