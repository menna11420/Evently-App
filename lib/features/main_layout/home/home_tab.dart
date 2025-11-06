import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_event_item.dart';
import 'package:evently_app/core/widgets/custom_tab_bar.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../l10n/app_localizations.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
          ),
          child: SafeArea(
            left: false,
            right: false,
            bottom: false,
            top: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${appLocalizations.welcome_back} ✨",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "Menna Elhoseny",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: ColorsManager.white,
                            ),
                            Text(
                              "Cairo , Egypt",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                        icon: Icon(Icons.sunny),
                        color: ColorsManager.white
                    ),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: (){},
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "EN",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                CustomTabBar(
                  categories: CategoryModel.getCategoriesWithAll(context),
                  selectedBgColor: ColorsManager.whiteBlue,
                  unSelectedBgColor: Colors.transparent,
                  selectedFgColor: ColorsManager.blue,
                  unSelectedFgColor: ColorsManager.whiteBlue,
                ),
                ],
            ),
          ),
        ),
        Expanded(child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context,index) => CustomEventItem(
            event: EventModel(
                category: CategoryModel.getCategories(context)[2],
                title: "Meeting for Updating The Development Method",
                description: "Meeting for Updating The Development Method",
                dateTime: DateTime.now(),
                timeOfDay: TimeOfDay.now()),
          )
          ,itemCount: 20,))
      ],
    );
  }
}
