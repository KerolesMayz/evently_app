import 'package:evently/data/data_models/category_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_tab.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.categories});

  final List<CategoryDataModel> categories;

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
              setState(() {
                currentIndex = value;
              });
            },
            isScrollable: true,
            tabs: widget.categories
                .map((category) =>
                    CustomTab(category: category, currentIndex: currentIndex))
                .toList()));
  }
}
