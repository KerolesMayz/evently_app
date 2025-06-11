import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/resources/constants_manager.dart';
import 'package:evently/core/widgets/custom_event/event_title_widget.dart';
import 'package:evently/data/data_models/event_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'event_date_widget.dart';

class CustomEvent extends StatelessWidget {
  const CustomEvent({super.key, required this.event});

  final EventDataModel event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 203.h,
      padding: REdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.blue, width: 1.w),
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                ConstantsManager.categories[2].imagePath!,
              )),
          color: Theme.of(context).colorScheme.onPrimary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EventDateWidget(
            date: event.date,
          ),
          EventTitleWidget(
            title: event.title,
          )
        ],
      ),
    );
  }
}
