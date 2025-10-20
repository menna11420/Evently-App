import 'package:evently_app/core/resources/assets_manager.dart';
import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomEventItem extends StatefulWidget {
  const CustomEventItem({super.key,required this.event});
  final EventModel event;

  @override
  State<CustomEventItem> createState() => _CustomEventItemState();
}

class _CustomEventItemState extends State<CustomEventItem> {
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(8),
      margin: REdgeInsets.symmetric(horizontal: 16,vertical: 8),
      width: double.infinity,
      height: 203.h,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.event.category.imagePath),
          fit: BoxFit.fill
        ),
        borderRadius: BorderRadius.circular(16.r),
        border: BoxBorder.all(color: ColorsManager.blue,width: 1.w)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("21",style: GoogleFonts.inter(color: ColorsManager.blue,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                  Text("Nov",style: GoogleFonts.inter(color: ColorsManager.blue,fontSize: 14.sp,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          ),
          Spacer(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: Text(
                        widget.event.title,
                        style: Theme.of(context).textTheme.titleSmall
                      )
                  ),
                  IconButton(
                      color: ColorsManager.blue,
                      onPressed: (){
                        setState(() {
                          favourite = !favourite;
                        });
                      },
                      icon: Icon(favourite ? Icons.favorite : Icons.favorite_border_outlined)
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
