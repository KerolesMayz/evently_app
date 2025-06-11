import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/colors_manager.dart';

class CustomProfileHeader extends StatelessWidget {
  const CustomProfileHeader(
      {super.key, required this.userName, required this.email});

  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);
    String currentLanguageCode = currentLocale.languageCode;
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: currentLanguageCode == 'ar'
                    ? const Radius.circular(0)
                    : Radius.circular(64.r),
                bottomRight: currentLanguageCode == 'ar'
                    ? Radius.circular(64.r)
                    : const Radius.circular(0))),
        color: ColorsManager.blue,
        child: SafeArea(
          child: Padding(
            padding: REdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            currentLanguageCode == 'ar' ? 1000.r : 24.r),
                        bottomLeft: Radius.circular(1000.r),
                        bottomRight: Radius.circular(1000.r),
                        topRight: Radius.circular(
                            currentLanguageCode == 'ar' ? 24.r : 1000.r)),
                    child: Image.asset(
                      AssetsManager.routeLogo,
                      width: 124.r,
                      height: 124.r,
                    )),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(email,
                          style: Theme.of(context).textTheme.titleMedium)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
