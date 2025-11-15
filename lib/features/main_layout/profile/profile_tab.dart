import 'package:evently_app/core/resources/assets_manager.dart';
import 'package:evently_app/core/resources/colors_manager.dart';
import 'package:evently_app/core/widgets/custom_drop_down_item.dart';
import 'package:evently_app/multi_providers/theme_provider.dart';
import 'package:evently_app/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../l10n/app_localizations.dart';
import '../../../multi_providers/language_provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: REdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.blue,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36.r)),
          ),
          child: SafeArea(
            bottom: false,
            right: false,
            left: false,
            child: Row(
              children: [
                Image.asset(ImagesAssets.profilePhoto),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Menna",
                        style: GoogleFonts.inter(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: ColorsManager.white,
                        ),
                      ),
                      Text(
                        "minnah123456@gmaol.com",
                        style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorsManager.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.h),
        CustomDropDownItem(
          label: appLocalizations.theme,
          selectedLabel: themeProvider.isDark ? appLocalizations.dark : appLocalizations.light,
          menuItems: [appLocalizations.light, appLocalizations.dark],
          onChange: (newTheme) {
            themeProvider.changeAppTheme(
              newTheme == appLocalizations.light ? ThemeMode.light : ThemeMode.dark,
            );
          },
        ),
        SizedBox(height: 16.h),
        CustomDropDownItem(
          onChange: (newLanguage){
            languageProvider.changeAppLanguage(newLanguage == "English" ? "en" : "ar");
          },
          label: appLocalizations.language,
          selectedLabel: languageProvider.isEnglish ? "English" : "Arabic",
          menuItems: ["English", "Arabic"],
        ),
        Spacer(flex: 7),
        Container(
          margin: REdgeInsets.symmetric(horizontal: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: REdgeInsets.all(16),
              backgroundColor: ColorsManager.red,
              foregroundColor: ColorsManager.white,
              textStyle: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: ColorsManager.white,
              ),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 8.w),
                Text(appLocalizations.logout),
              ],
            ),
          ),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
