import 'package:evently/data/data_models/category_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/colors_manager.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.category,
    required this.currentIndex,
  });

  final CategoryDataModel category;
  final int currentIndex;

  Color foreGroundColor() {
    return currentIndex == int.parse(category.id)
        ? ColorsManager.blue
        : ColorsManager.white;
  }

  Color backGroundColor() {
    return currentIndex == int.parse(category.id)
        ? ColorsManager.white
        : Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(46.r),
          side: BorderSide(width: 1.w, color: ColorsManager.white)),
      color: backGroundColor(),
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              category.svgIconPath,
              width: 18.r,
              height: 18.r,
              colorFilter: ColorFilter.mode(foreGroundColor(), BlendMode.srcIn),
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              category.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: foreGroundColor()),
            )
          ],
        ),
      ),
    );
  }
}
