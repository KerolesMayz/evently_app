import 'package:evently/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu(
      {super.key,
      required this.title,
      required this.menuItems,
      required this.initialSelection});

  final String title;
  final String initialSelection;
  final List<String> menuItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 16.h,
        ),
        DropdownMenu(
            initialSelection: initialSelection,
            enableSearch: false,
            width: context.width - 32.w,
            dropdownMenuEntries: menuItems
                .map(
                  (item) => DropdownMenuEntry(value: item, label: item),
                )
                .toList()),
      ],
    );
  }
}
