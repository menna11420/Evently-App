import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_event_item.dart';
import 'package:evently_app/core/widgets/custom_text_form_field.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: REdgeInsets.only(top: 16,left: 16,right: 16),
            child: TextField(
              onTap: () {},
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: ColorsManager.blue,),
                hintText: "Search for Event",
                hintStyle: GoogleFonts.inter(color: ColorsManager.blue,fontWeight: FontWeight.bold,fontSize: 14.sp),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: ColorsManager.blue, width: 1.w),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => CustomEventItem(
                event: EventModel(
                  category: CategoryModel.categories[2],
                  title: "Meeting for Updating The Development Method",
                  description: "Meeting for Updating The Development Method",
                  dateTime: DateTime.now(),
                  timeOfDay: TimeOfDay.now(),
                ),
              ),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
