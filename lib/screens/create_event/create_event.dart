import 'package:evently/core/resources/assets_manager.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:evently/core/resources/constants_manager.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_tab/custom_tab_bar.dart';
import 'package:evently/core/widgets/custom_text_field.dart';
import 'package:evently/screens/create_event/widgets/choose_event_location_button.dart';
import 'package:evently/screens/create_event/widgets/choose_time.dart';
import 'package:flutter/material.dart';
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
        title: const Text('Create Event'),
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
              color: ColorsManager.dark,
              child: Image.asset(categories[_currentCategory].imagePath!)),
          CustomTabBar(
              onTap: (index) {
                setState(() {
                  _currentCategory = index;
                });
              },
              categories: categories,
              selectedBackGroundColor: ColorsManager.blue,
              selectedForeGroundColor: ColorsManager.white,
              unselectedBackGroundColor: ColorsManager.white,
              unselectedForeGroundColor: ColorsManager.blue),
          Expanded(
            child: ListView(
              padding: REdgeInsets.all(16),
              children: [
                Text(
                  'Title',
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
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: 'Event Title',
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text('Description',
                    style: Theme.of(context).textTheme.displayMedium),
                SizedBox(
                  height: 8.h,
                ),
                const CustomTextField(
                  maxLines: 3,
                  hintText: 'Event Description',
                ),
                SizedBox(
                  height: 16.h,
                ),
                ChooseTime(
                    iconPath: AssetsManager.calender,
                    title: 'Event Date',
                    action: 'Choose Date',
                    onActionTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                ChooseTime(
                    iconPath: AssetsManager.time,
                    title: 'Event Time',
                    action: 'Choose Time',
                    onActionTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                Text('Location',
                    style: Theme.of(context).textTheme.displayMedium),
                SizedBox(
                  height: 8.h,
                ),
                ChooseEventLocationButton(onTap: () {}),
                SizedBox(
                  height: 16.h,
                ),
                CustomButton(
                  text: 'Add Event',
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
