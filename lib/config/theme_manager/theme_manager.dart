import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: ColorsManager.white,
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: ColorsManager.grey,
          suffixIconColor: ColorsManager.grey,
          hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorsManager.grey),
          labelStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorsManager.grey),
          errorStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorsManager.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.grey, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.red, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.blue, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.grey, width: 1),
          )),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              foregroundColor: ColorsManager.blue,
              textStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline))),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: ColorsManager.blue,
              foregroundColor: ColorsManager.white,
              textStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 20.sp),
              padding: REdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r)))),
      textTheme: TextTheme(
          displayMedium: GoogleFonts.inter(
              color: ColorsManager.dark,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
          displayLarge: GoogleFonts.inter(
              color: ColorsManager.blue,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 64.h,
          foregroundColor: ColorsManager.dark,
          centerTitle: true,
          titleTextStyle: GoogleFonts.inter(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
              color: ColorsManager.dark,
              fontSize: 22)),
      cardTheme: CardTheme(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
          side: const BorderSide(width: 1, color: ColorsManager.blue),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorsManager.blue,
          elevation: 0,
          selectedItemColor: ColorsManager.white,
          unselectedItemColor: ColorsManager.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(
            color: ColorsManager.white,
            size: 24.r,
          ),
          unselectedIconTheme: IconThemeData(
            color: ColorsManager.white,
            size: 20.r,
          ),
          selectedLabelStyle:
              GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12),
          unselectedLabelStyle:
              GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          iconSize: 24.r,
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white,
          elevation: 0,
          sizeConstraints: BoxConstraints(minWidth: 56.r, minHeight: 56.r),
          shape: StadiumBorder(
              side: BorderSide(color: ColorsManager.white, width: 5.r))));
  static final ThemeData darkTheme = ThemeData();
}
