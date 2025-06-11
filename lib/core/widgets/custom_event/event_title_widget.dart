import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../resources/colors_manager.dart';

class EventTitleWidget extends StatefulWidget {
  const EventTitleWidget({super.key, required this.title});

  final String title;

  @override
  State<EventTitleWidget> createState() => _EventTitleWidgetState();
}

class _EventTitleWidgetState extends State<EventTitleWidget> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  flex: 4,
                  child: Text(
                    widget.title,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                  icon: Icon(
                    _isFavorite ? EvaIcons.heart : EvaIcons.heart_outline,
                    color: ColorsManager.blue,
                    size: 24.r,
                  ))
            ],
          ),
        ));
  }
}
