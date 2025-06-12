import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOnboardingPage extends StatelessWidget {
  const CustomOnboardingPage(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.description,
      this.imageHeight = 340,
      this.imageWidth = 252});

  final String imagePath;
  final String title;
  final String description;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 70),
        children: [
          SizedBox(
            height: 50.h,
          ),
          Image.asset(
            imagePath,
            width: imageWidth.w,
            height: imageHeight.h,
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
