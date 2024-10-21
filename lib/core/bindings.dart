import 'package:clubcon/features/home/controllers/home_controller.dart';
import 'package:clubcon/features/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../features/auth/controllers/auth_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<ProfileSetupController>(() => ProfileSetupController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
