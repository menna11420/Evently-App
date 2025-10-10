import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager{
  static final ThemeData light = ThemeData(
      scaffoldBackgroundColor: ColorsManager.whiteBlue,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: ColorsManager.gray,width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(color: ColorsManager.gray,width: 1.w)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(color: ColorsManager.red,width: 1.w)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: BorderSide(color: ColorsManager.red,width: 1.w)
        ),
        prefixIconColor: ColorsManager.gray,
        suffixIconColor: ColorsManager.gray,
        labelStyle: GoogleFonts.inter(color: ColorsManager.gray,fontSize: 16.sp,fontWeight:FontWeight.w500)

      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r)
          ),
          padding: REdgeInsets.symmetric(vertical: 16,),
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white,
          textStyle: GoogleFonts.inter(color: ColorsManager.white,fontSize: 20.sp,fontWeight:FontWeight.w500)

      )
      ),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.inter(color: ColorsManager.black1C,fontSize: 16.sp,fontWeight:FontWeight.w500)

  )
  );
  static final ThemeData dark = ThemeData();
}