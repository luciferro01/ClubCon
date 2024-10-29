import 'package:clubcon/core/bindings.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:clubcon/routes/router.dart';
import 'package:clubcon/utils/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(const MyApp());
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
          // Dark theme is included in the Full template
          themeMode: themeController.theme,
          initialBinding: AppBindings(), // Add this line
          // onGenerateRoute: router.generateRoute,
          getPages: getPagesRoute,
          initialRoute: Routes.onbordingViewRoute,
        );
      },
    );
  }
}
