import 'package:evently_app/config/theme/theme_manager.dart';
import 'package:evently_app/core/routes_manager/routes_manager.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:evently_app/providers/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'core/routes_manager/app_routes.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ConfigProvider(),
    child: const EventlyApp(),
  ));
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var configProvider = Provider.of<ConfigProvider>(context);
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
          themeMode: configProvider.currentTheme,
          locale: Locale(configProvider.currentLanguage),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: [
            Locale('en'),
            Locale('ar'),
          ],
        ),
      );
  }
}
