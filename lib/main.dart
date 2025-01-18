import 'package:clubcon/core/bindings.dart';
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
  debugPrint("ENVIRONMENT: ${dotenv.env['ENVIRONMENT']}");
  debugPrint("PROD_URL: ${dotenv.env['PROD_URL']}");
  debugPrint("REMOTE_DEV_URL: ${dotenv.env['PROD_DEV_URL']}");
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
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ClubCon',
          theme: AppTheme.lightTheme(context),
          themeMode: Get.put(ThemeController()).theme,
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
