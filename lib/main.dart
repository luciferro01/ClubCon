import 'package:clubcon/core/bindings.dart';
import 'package:clubcon/core/services/cache_service.dart';
import 'package:clubcon/core/services/shared_prefs_service.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/routes/router.dart';
import 'package:clubcon/utils/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));

  await initServices(); // Initialize all services

  runApp(const MyApp());
}

Future<void> initServices() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  await Get.putAsync(() => SharedPreferencesService(sharedPrefs).init());

  // Initialize CacheService
  final cacheService = await Get.putAsync(() => CacheService().init());

  // Wait for initialization to complete
  while (!cacheService.isInitialized) {
    await Future.delayed(const Duration(milliseconds: 100));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ClubCon',
          theme: AppTheme.lightTheme(context),
          darkTheme: AppTheme.darkTheme(context),
          themeMode: themeController.theme,
          initialBinding: AppBindings(),
          getPages: getPagesRoute,
          initialRoute: determineInitialRoute(),
        );
      },
    );
  }

  String determineInitialRoute() {
    final prefs = Get.find<SharedPreferencesService>();
    return prefs.isLoggedIn ? Routes.homeViewRoute : Routes.welcomeViewRoute;
  }
}
