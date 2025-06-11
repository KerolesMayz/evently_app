import 'package:evently/data/data_models/category_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_tab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key,
      required this.categories,
      required this.selectedBackGroundColor,
      required this.selectedForeGroundColor,
      required this.unselectedBackGroundColor,
      required this.unselectedForeGroundColor,
      required this.selectedBorderColor,
      required this.unselectedBorderColor,
      this.onTap});

  final List<CategoryDataModel> categories;
  final Color selectedBackGroundColor;
  final Color selectedForeGroundColor;
  final Color selectedBorderColor;
  final Color unselectedBackGroundColor;
  final Color unselectedForeGroundColor;
  final Color unselectedBorderColor;

  final void Function(int)? onTap;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: widget.categories.length,
        child: TabBar(
            padding: REdgeInsets.symmetric(horizontal: 16),
            onTap: (value) {
              widget.onTap != null ? widget.onTap!.call(value) : null;
              setState(() {
                currentIndex = value;
              });
            },
            isScrollable: true,
            tabs: widget.categories
                .map((category) => CustomTab(
                    isSelected:
                        widget.categories.indexOf(category) == currentIndex,
                    category: category,
                    selectedBackGroundColor: widget.selectedBackGroundColor,
                    selectedBorderColor: widget.selectedBorderColor,
                    unselectedBorderColor: widget.unselectedBorderColor,
                    selectedForeGroundColor: widget.selectedForeGroundColor,
                    unselectedBackGroundColor: widget.unselectedBackGroundColor,
                    unselectedForeGroundColor:
                        widget.unselectedForeGroundColor))
                .toList()));
  }
}
