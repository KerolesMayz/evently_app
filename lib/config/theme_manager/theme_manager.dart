import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: ColorsManager.blue,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: ColorsManager.offWhite,
          onPrimary: ColorsManager.dark,
          secondary: ColorsManager.white,
          onSecondary: ColorsManager.grey,
          error: ColorsManager.red,
          onError: ColorsManager.red,
          background: ColorsManager.darkBlue,
          onBackground: ColorsManager.white,
          surface: ColorsManager.white,
          onSurface: ColorsManager.blue),
      dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: GoogleFonts.inter(
              color: ColorsManager.blue,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: ColorsManager.blue))),
          menuStyle: MenuStyle(
              backgroundColor: MaterialStateProperty.all(ColorsManager.white))),
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
      iconTheme: const IconThemeData(color: ColorsManager.white),
      tabBarTheme: TabBarTheme(
          indicator: const BoxDecoration(color: Colors.transparent),
          unselectedLabelColor: Colors.transparent,
          labelPadding: REdgeInsets.symmetric(horizontal: 5)),
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
              fontSize: 20.sp),
          titleSmall: GoogleFonts.inter(
              color: ColorsManager.white,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp),
          titleMedium: GoogleFonts.inter(
              color: ColorsManager.white,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
          titleLarge: GoogleFonts.inter(
              color: ColorsManager.white,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 64.h,
          foregroundColor: ColorsManager.dark,
          centerTitle: true,
          titleTextStyle: GoogleFonts.inter(fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, color: ColorsManager.dark, fontSize: 22)),
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
          selectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12),
          unselectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(iconSize: 24.r, backgroundColor: ColorsManager.blue, foregroundColor: ColorsManager.white, elevation: 0, sizeConstraints: BoxConstraints(minWidth: 56.r, minHeight: 56.r), shape: StadiumBorder(side: BorderSide(color: ColorsManager.white, width: 5.r))));
  static final ThemeData darkTheme = ThemeData(
      primaryColor: ColorsManager.darkBlue,
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: ColorsManager.darkBlue,
          onPrimary: ColorsManager.darkBlue,
          secondary: ColorsManager.darkBlue,
          onSecondary: ColorsManager.lightGrey,
          error: ColorsManager.red,
          onError: ColorsManager.red,
          background: ColorsManager.darkBlue,
          onBackground: ColorsManager.blue,
          surface: ColorsManager.darkBlue,
          onSurface: ColorsManager.lightGrey),
      dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: GoogleFonts.inter(
              color: ColorsManager.blue,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: ColorsManager.blue))),
          menuStyle: MenuStyle(
              backgroundColor: MaterialStateProperty.all(ColorsManager.white))),
      scaffoldBackgroundColor: ColorsManager.darkBlue,
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: ColorsManager.lightGrey,
          suffixIconColor: ColorsManager.lightGrey,
          hintStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorsManager.lightGrey),
          labelStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorsManager.lightGrey),
          errorStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: ColorsManager.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.blue, width: 1),
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
            borderSide: const BorderSide(color: ColorsManager.blue, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: ColorsManager.blue, width: 1),
          )),
      iconTheme: const IconThemeData(color: ColorsManager.lightGrey),
      tabBarTheme: TabBarTheme(
          indicator: const BoxDecoration(color: Colors.transparent),
          unselectedLabelColor: Colors.transparent,
          labelPadding: REdgeInsets.symmetric(horizontal: 5)),
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
              color: ColorsManager.lightGrey,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
          displayLarge: GoogleFonts.inter(
              color: ColorsManager.blue,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp),
          titleSmall: GoogleFonts.inter(
              color: ColorsManager.lightGrey,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp),
          titleMedium: GoogleFonts.inter(
              color: ColorsManager.lightGrey,
              fontWeight: FontWeight.w500,
              fontSize: 16.sp),
          titleLarge: GoogleFonts.inter(
              color: ColorsManager.lightGrey,
              fontWeight: FontWeight.w700,
              fontSize: 24.sp)),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 64.h,
          foregroundColor: ColorsManager.blue,
          centerTitle: true,
          titleTextStyle: GoogleFonts.inter(fontWeight: FontWeight.normal, fontStyle: FontStyle.normal, color: ColorsManager.blue, fontSize: 22)),
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
          backgroundColor: ColorsManager.darkBlue,
          elevation: 0,
          selectedItemColor: ColorsManager.lightGrey,
          unselectedItemColor: ColorsManager.lightGrey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(
            color: ColorsManager.lightGrey,
            size: 24.r,
          ),
          unselectedIconTheme: IconThemeData(
            color: ColorsManager.lightGrey,
            size: 20.r,
          ),
          selectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12),
          unselectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 12)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(iconSize: 24.r, backgroundColor: ColorsManager.darkBlue, foregroundColor: ColorsManager.white, elevation: 0, sizeConstraints: BoxConstraints(minWidth: 56.r, minHeight: 56.r), shape: StadiumBorder(side: BorderSide(color: ColorsManager.white, width: 5.r))));
}
