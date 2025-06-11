import 'package:evently/core/extensions/context_extension.dart';
import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu(
      {super.key,
      required this.title,
      required this.menuItems,
      required this.initialSelection,
      this.onSelected});

  final String title;
  final String initialSelection;
  final List<String> menuItems;
  final void Function(String? value)? onSelected;

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
            onSelected: onSelected != null ? onSelected! : null,
            initialSelection: initialSelection,
            enableSearch: false,
            width: context.width - 32.w,
            dropdownMenuEntries: menuItems
                .map(
                  (item) => DropdownMenuEntry(
                      value: item,
                      label: item,
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(ColorsManager.blue),
                          textStyle: MaterialStateProperty.all(
                              Theme.of(context).textTheme.displayLarge))),
                )
                .toList()),
      ],
    );
  }
}
