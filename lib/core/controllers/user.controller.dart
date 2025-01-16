import 'package:clubcon/core/services/user_service.dart';
import 'package:get/get.dart';

import '../models/user_profile_model.dart';
import '../services/shared_prefs_service.dart';

class UserController extends GetxController {
  final SharedPreferencesService _sharedPrefs = Get.find();

  final UserService _userService = Get.find();

  var userProfile = Rxn<UserModel>();
  RxBool isLoading = false.obs;

  Future<void> fetchUserProfile() async {
    isLoading.value = true;
    final result = await _userService.fetchUserProfile();
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
