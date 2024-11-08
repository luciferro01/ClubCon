// lib/core/controllers/user_controller.dart
import 'package:get/get.dart';
import '../models/user_profile_model.dart';
import '../../features/auth/services/auth_service.dart';
import '../../routes/route_constants.dart';
import '../sevices/shared_prefs_service.dart';

class UserController extends GetxController {
  final SharedPreferencesService _sharedPrefs = Get.find();
  final AuthService _authService = Get.find();

  var userProfile = Rxn<UserProfileModel>();
  RxBool isLoading = false.obs;

  Future<void> fetchUserProfile() async {
    isLoading.value = true;
    final result = await _authService.getUserProfile();
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occurred"),
      (profile) {
        userProfile.value = profile;
      },
    );
    isLoading.value = false;
  }

  Future<void> logout() async {
    isLoading.value = true;
    final result = await _authService.logout();
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occurred"),
      (success) {
        _sharedPrefs.setIsLoggedIn(false);
        userProfile.value = null;
        Get.offAllNamed(Routes.welcomeViewRoute);
      },
    );
    isLoading.value = false;
  }

  void setUserProfile(UserProfileModel profile) {
    userProfile.value = profile;
  }
}
