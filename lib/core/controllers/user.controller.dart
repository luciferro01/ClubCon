import 'package:clubcon/core/services/user_service.dart';
import 'package:get/get.dart';

import '../models/user_model.dart';
import '../services/shared_prefs_service.dart';

class UserController extends GetxController {
  final SharedPreferencesService _sharedPrefs = Get.find();

  final UserService _userService = Get.find();

  var userProfile = Rxn<UserModel>();
  RxBool isLoading = false.obs;

  Future<void> fetchUser() async {
    isLoading.value = true;
    final result = await _userService.fetchUser();
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occurred"),
      (profile) {
        userProfile.value = profile;
      },
    );
    isLoading.value = false;
  }

  void setUserProfile(UserModel profile) {
    userProfile.value = profile;
  }
}
