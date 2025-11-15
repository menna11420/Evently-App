import 'package:evently_app/config/theme/theme_manager.dart';
import 'package:evently_app/core/routes_manager/routes_manager.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:evently_app/multi_providers/language_provider.dart';
import 'package:evently_app/multi_providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'core/routes_manager/app_routes.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => LanguageProvider()),
    ],
      child: const EventlyApp()
  ),
  );
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    return ScreenUtilInit(
        designSize: Size(393, 841),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.router,
          initialRoute: AppRoutes.mainLayout,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: themeProvider.currentTheme,
          locale: Locale(languageProvider.currentLanguage),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: [
            Locale('en'),
            Locale('ar'),
          ],
        ),
      );
  }
}
