import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../resources/colors_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,required this.labelText, this.prefixIcon, this.suffixIcon,required this.keyboardType, this.isSecure = false});
  final String labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool isSecure;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      style: GoogleFonts.inter(color: ColorsManager.black1C,fontSize: 16.sp,fontWeight:FontWeight.w400),
      cursorColor: ColorsManager.gray,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
      ),
    );
  }
}
