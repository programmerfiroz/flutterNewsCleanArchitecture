import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/core/theme/controller/theme_controller.dart';
import 'package:newsapp/core/theme/theme.dart';
import 'package:newsapp/splash_page.dart';
import 'core/bindings/initial_binding.dart';
import 'features/news/presentation/pages/news_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Obx(() {
     final ThemeController themeController = Get.find<ThemeController>();
     ThemeMode themeMode = themeController.getThemeMode();

     return GetMaterialApp(
       debugShowCheckedModeBanner: false,
       themeMode: themeMode,
       theme: AppTheme.lightTheme(context),
       darkTheme: AppTheme.darkTheme(context),
       title: 'NewsApp',
       initialBinding: InitialBinding(),
       initialRoute: '/splash',  // Set initial route to splash screen
       getPages: [
         GetPage(name: '/splash', page: () => SplashPage()),  // SplashPage route
         GetPage(name: '/news', page: () => NewsPage()),      // NewsPage route
       ],
       locale: const Locale('en'),
       // localizationsDelegates: const [
       //   AppLocalizations.delegate,
       //   GlobalMaterialLocalizations.delegate,
       //   GlobalWidgetsLocalizations.delegate,
       //   GlobalCupertinoLocalizations.delegate,
       // ],
       supportedLocales: const [
         Locale('en'), // English
         // Locale('zh'), // Mandarin Chinese
         // Locale('hi'), // Hindi
         Locale('es'), // Spanish
         // Locale('fr'), // French
         // Locale('ar'), // Arabic
         // Locale('bn'), // Bengali
         // Locale('ru'), // Russian
         // Locale('pt'), // Portuguese
         // Locale('id'), // Indonesian
       ],
     );
   });
  }
}
