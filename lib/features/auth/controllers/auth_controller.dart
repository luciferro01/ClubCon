import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/features/auth/models/user_model.dart';
import 'package:clubcon/features/auth/services/auth_service.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../miscellaneous/views/dialog_view.dart';

class AuthController extends GetxController {
  // TextEditingControllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final AuthService authService = Get.find();
  var user = Rxn<AuthModel>();
  RxBool isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    final res = await authService.login(
      emailController.text,
      passwordController.text,
    );
    res.fold(
      (failure) {
        if (failure.errorText == 'confirm_new_login') {
          Get.to(
            () => DialogView(
              content: "Confirm your Login with @${emailController.text}",
              banner: SvgAssets.lockerIllustration,
              hasButton: true,
              description: "*You will be logged out from all other devices.",
              onTap: () {
                debugPrint("You will be logged out from all other devices");
                authService
                    .confirmNewLogin(
                  emailController.text,
                  passwordController.text,
                )
                    .then((confirmRes) {
                  confirmRes.fold(
                    (failure) => Get.snackbar(
                        'Error', failure.message ?? "Unexpected error occured"),
                    (success) => Get.toNamed(Routes.homeViewRoute),
                  );
                });
              },
              buttonText: "Confirm your Login",
            ),
          );
        } else {
          Get.snackbar('Error', failure.message ?? "Unexpected error occured");
        }
      },
      (userData) => user.value = userData,
    );
    isLoading.value = false;
  }

  Future<void> logout() async {
    isLoading.value = true;
    final result = await authService.logout();
    result.fold(
      (failure) =>
          Get.snackbar('Error', failure.message ?? "Unexpected error occured"),
      (success) => user.value = null,
    );
    isLoading.value = false;
  }

  // Obscure password state
  var obscurePassword = true.obs;
  var obscureConfirmPassword = true.obs;

  // Toggle obscure password
  void toggleObscurePassword() {
    obscurePassword.value = !obscurePassword.value;
  }

  // Toggle obscure confirm password
  void toggleObscureConfirmPassword() {
    obscureConfirmPassword.value = !obscureConfirmPassword.value;
  }

  // Dispose controllers
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
