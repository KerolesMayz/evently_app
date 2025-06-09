import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../resources/colors_manager.dart';

class EventTitleWidget extends StatelessWidget {
  const EventTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        color: ColorsManager.offWhite,
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  flex: 4,
                  child: Text(
                    title,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    EvaIcons.heart,
                    color: ColorsManager.blue,
                    size: 24.r,
                  ))
            ],
          ),
        ));
  }
}
