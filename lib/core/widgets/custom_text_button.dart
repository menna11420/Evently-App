import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key,required this.text,required this.onTap,this.textAlign = TextAlign.start});
  final String text;
  final VoidCallback onTap;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onTap,
          child: Text(text,style: GoogleFonts.inter(color: ColorsManager.blue,fontSize: 16,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,decorationColor: ColorsManager.blue,),textAlign: textAlign,)
      );
  }
}
