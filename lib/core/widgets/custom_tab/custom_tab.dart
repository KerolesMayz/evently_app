import 'package:evently/data/data_models/category_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.category,
      required this.selectedBackGroundColor,
      required this.selectedForeGroundColor,
      required this.unselectedBackGroundColor,
      required this.unselectedForeGroundColor,
      required this.isSelected});

  final CategoryDataModel category;
  final Color selectedBackGroundColor;
  final Color selectedForeGroundColor;
  final Color unselectedBackGroundColor;
  final Color unselectedForeGroundColor;
  final bool isSelected;

  Color backGroundColor() {
    return isSelected ? selectedBackGroundColor : unselectedBackGroundColor;
  }

  Color foreGroundColor() {
    return isSelected ? selectedForeGroundColor : unselectedForeGroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(46.r),
          side: BorderSide(width: 1.w, color: foreGroundColor())),
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
