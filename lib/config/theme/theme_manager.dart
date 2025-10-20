import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    useMaterial3: false,
    primaryColor: ColorsManager.blue,
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r)
      ),
      color: ColorsManager.whiteBlue,
      elevation: 8
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.blue,
      primary: ColorsManager.whiteBlue,
      onPrimary: ColorsManager.blue,
      secondary: Colors.transparent,
      onSecondary: ColorsManager.whiteBlue,
    ),
    bottomAppBarTheme: BottomAppBarThemeData(
      color: ColorsManager.blue,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue,
      foregroundColor: ColorsManager.white,
      shape: StadiumBorder(
          side: BorderSide(
            color: ColorsManager.white,
            width: 4.w,
          )
      ),
    ),
    scaffoldBackgroundColor: ColorsManager.whiteBlue,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.gray, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.gray, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
      ),
      prefixIconColor: ColorsManager.gray,
      suffixIconColor: ColorsManager.gray,
      labelStyle: GoogleFonts.inter(
        color: ColorsManager.gray,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: REdgeInsets.symmetric(vertical: 16),
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.white,
        textStyle: GoogleFonts.inter(
          color: ColorsManager.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.blue,
      ),
      headlineSmall: GoogleFonts.inter(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorsManager.white),
      bodySmall: GoogleFonts.inter(
        color: ColorsManager.black1C,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.inter(
          color: ColorsManager.black1C,
          fontSize: 14.sp,
          fontWeight: FontWeight.bold),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 16),
        side: BorderSide(color: ColorsManager.blue, width: 1.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      ),
    ),
  );
  static final ThemeData dark = ThemeData(
    useMaterial3: false,
    primaryColor: ColorsManager.darkBlue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.darkBlue,
      primary: ColorsManager.blue,
      onPrimary: ColorsManager.whiteBlue,
      secondary: Colors.transparent,
      onSecondary: ColorsManager.whiteBlue,
    ),
    bottomAppBarTheme: BottomAppBarThemeData(
      color: ColorsManager.blue,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.blue,
      foregroundColor: ColorsManager.white,
      shape: StadiumBorder(
          side: BorderSide(
            color: ColorsManager.white,
            width: 4.w,
          )
      ),
    ),
    scaffoldBackgroundColor: ColorsManager.whiteBlue,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.gray, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.gray, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
      ),
      prefixIconColor: ColorsManager.gray,
      suffixIconColor: ColorsManager.gray,
      labelStyle: GoogleFonts.inter(
        color: ColorsManager.gray,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: REdgeInsets.symmetric(vertical: 16),
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.white,
        textStyle: GoogleFonts.inter(
          color: ColorsManager.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: ColorsManager.blue,
      ),
      headlineSmall: GoogleFonts.inter(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorsManager.white),
      bodySmall: GoogleFonts.inter(
        color: ColorsManager.black1C,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 16),
        side: BorderSide(color: ColorsManager.blue, width: 1.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      ),
    ),
  );
}
