import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/resources/constants_manager.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_tab/custom_tab_bar.dart';
import 'package:evently/core/widgets/custom_text_field.dart';
import 'package:evently/screens/create_event/widgets/choose_event_location_button.dart';
import 'package:evently/screens/create_event/widgets/choose_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/data_models/category_data_model.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final List<CategoryDataModel> categories = ConstantsManager.categories
      .sublist(1, ConstantsManager.categories.length);
  int _currentCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorsManager.blue,
        title: Text(AppLocalizations.of(context)!.create_event),
        titleTextStyle: GoogleFonts.inter(
            color: ColorsManager.blue,
            fontWeight: FontWeight.w400,
            fontSize: 22.sp),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
              margin: REdgeInsets.all(16),
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: const BorderSide(color: Colors.transparent)),
              child: Image.asset(categories[_currentCategory].imagePath!)),
          CustomTabBar(
              onTap: (index) {
                setState(() {
                  _currentCategory = index;
                });
              },
              categories: categories,
              selectedBackGroundColor: ColorsManager.blue,
              selectedBorderColor: Theme.of(context).colorScheme.secondary,
              unselectedBorderColor: ColorsManager.blue,
              selectedForeGroundColor: Theme.of(context).colorScheme.secondary,
              unselectedBackGroundColor:
                  Theme.of(context).colorScheme.secondary,
              unselectedForeGroundColor: ColorsManager.blue),
          Expanded(
            child: ListView(
              padding: REdgeInsets.all(16),
              children: [
                Text(
                  AppLocalizations.of(context)!.title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                  prefixIcon: SvgPicture.asset(
                    AssetsManager.note,
                    width: 5,
                    height: 5,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSecondary,
                        BlendMode.srcIn),
                    fit: BoxFit.scaleDown,
                  ),
                  textInputType: TextInputType.text,
                  hintText: AppLocalizations.of(context)!.event_title,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(AppLocalizations.of(context)!.description,
                    style: Theme.of(context).textTheme.displayMedium),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                  textInputType: TextInputType.text,
                  maxLines: 3,
                  hintText: AppLocalizations.of(context)!.event_description,
                ),
                SizedBox(
                  height: 16.h,
                ),
                ChooseTime(
                    iconPath: AssetsManager.calender,
                    title: AppLocalizations.of(context)!.event_date,
                    action: AppLocalizations.of(context)!.choose_date,
                    onActionTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                ChooseTime(
                    iconPath: AssetsManager.time,
                    title: AppLocalizations.of(context)!.event_time,
                    action: AppLocalizations.of(context)!.choose_time,
                    onActionTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                Text(AppLocalizations.of(context)!.location,
                    style: Theme.of(context).textTheme.displayMedium),
                SizedBox(
                  height: 8.h,
                ),
                ChooseEventLocationButton(onTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                CustomButton(
                  text: AppLocalizations.of(context)!.add_event,
                  onClick: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
