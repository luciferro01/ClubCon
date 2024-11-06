import 'package:clubcon/core/sevices/dio_service.dart';
import 'package:clubcon/features/auth/services/auth_service.dart';
import 'package:clubcon/features/home/controllers/home_controller.dart';
import 'package:clubcon/features/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../features/auth/controllers/auth_controller.dart';
import '../features/onboarding/controllers/onboarding_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<DioService>(DioService(), permanent: true);
    Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
    Get.lazyPut<OnboardingController>(() => OnboardingController(),
        fenix: true);
    Get.lazyPut<ProfileSetupController>(() => ProfileSetupController(),
        fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
