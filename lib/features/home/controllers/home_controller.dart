import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  // final UserController _userController = Get.find();

  // AuthModel? get user => _userController.user.value;

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}
