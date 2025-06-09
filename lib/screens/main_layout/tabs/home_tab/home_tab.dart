import 'package:evently/core/resources/constants_manager.dart';
import 'package:evently/core/widgets/custom_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/colors_manager.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorsManager.blue,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(24.r))),
          child: SafeArea(
            child: Padding(
              padding: REdgeInsets.only(top: 12, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back ✨',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              'Keroles Mayz',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 24.r,
                                ),
                                Text(
                                  'Cairo , Egypt',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(fontWeight: FontWeight.w400),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AssetsManager.sun),
                            SizedBox(
                              width: 10.w,
                            ),
                            SvgPicture.asset(AssetsManager.enLang)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTabBar(
                    categories: ConstantsManager.categories,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
