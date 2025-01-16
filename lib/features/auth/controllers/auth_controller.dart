import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/core/sevices/user_service.dart';
import 'package:clubcon/features/auth/models/user_model.dart';
import 'package:clubcon/features/auth/services/auth_service.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/sevices/shared_prefs_service.dart';
import '../../miscellaneous/views/dialog_view.dart';

class AuthController extends GetxController {
  // TextEditingControllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final SharedPreferencesService sharedPreferencesService = Get.find();
  final AuthService _authService = Get.find();
  final UserService _userService = Get.find();

  var user = Rxn<AuthModel>();
  RxBool isLoading = false.obs;

  Future<void> register() async {
    isLoading.value = true;
    final res = await _authService.register(
      usernameController.text,
      emailController.text,
      passwordController.text,
    );
    res.fold(
      (failure) {
        Get.snackbar('Error', failure.message ?? "Unexpected error occured");
      },
      (success) {
        Get.to(
          () => DialogView(
            content: "Please verify your email @${emailController.text}",
            banner: SvgAssets.lockerIllustration,
            hasButton: true,
            description: "A verification link has been sent to your email.",
            onTap: () async {
              final resendRes =
                  await _authService.resendVerifyMail(emailController.text);
              resendRes.fold(
                (failure) => Get.snackbar(
                    'Error', failure.message ?? "Unexpected error occured"),
                (success) {
                  Get.snackbar('Success', success);
                  // Get.back();
                },
              );
            },
            floatingButtonOnTap: () {
              // Get.back();

              // Get.back();
              Get.offAllNamed(Routes.logInViewRoute);
            },
            buttonText: "Resend Verify Mail",
          ),
        );
      },
    );
    isLoading.value = false;
  }

  Future<void> login() async {
    isLoading.value = true;
    final res = await _authService.login(
      emailController.text,
      passwordController.text,
    );
    res.fold(
      (failure) async {
        if (failure.errorText == 'confirm_new_login') {
          Get.to(
            () => DialogView(
              content: "Confirm your Login with @${emailController.text}",
              banner: SvgAssets.lockerIllustration,
              hasButton: true,
              description: "*You will be logged out from all other devices.",
              onTap: () {
                debugPrint("You will be logged out from all other devices");
                _authService
                    .confirmNewLogin(
                  emailController.text,
                  passwordController.text,
                )
                    .then((resendRes) {
                  resendRes.fold(
                    (failure) => Get.snackbar(
                        'Error', failure.message ?? "Unexpected error occured"),
                    (success) {
                      sharedPreferencesService.setIsLoggedIn(true);
                      Get.offAllNamed(Routes.homeViewRoute);
                    },
                  );
                });
              },
              buttonText: "Confirm your Login",
            ),
          );
        } else if (failure.errorText == 'verifyEmail') {
          await _authService.resendVerifyMail(
            emailController.text,
          );
          Get.to(
            () => DialogView(
              content: "Please verify your email @${emailController.text}",
              banner: SvgAssets.lockerIllustration,
              hasButton: true,
              description: "Please verify in order to login.",
              onTap: () {
                _authService
                    .resendVerifyMail(
                  emailController.text,
                )
                    .then((resendRes) {
                  resendRes.fold(
                    (failure) => Get.snackbar(
                        'Error', failure.message ?? "Unexpected error occured"),
                    (success) => Get.snackbar("Success", success),
                  );
                });
              },
              buttonText: "Resend Verify Mail",
            ),
          );
        } else {
          Get.snackbar('Error', failure.message ?? "Unexpected error occured");
        }
      },
      (userData) async {
        sharedPreferencesService.setIsLoggedIn(true);
        user.value = userData;
        final profileRes = await _userService.fetchUserProfile();
        profileRes.fold(
          (failure) => Get.snackbar(
              'Error', failure.message ?? "Unexpected error occured"),
          (profile) {
            Get.offAllNamed(Routes.homeViewRoute);
          },
        );
      },
    );
    isLoading.value = false;
  }

  // Future<void> logout() async {
  //   isLoading.value = true;
  //   final result = await _authService.logout();
  //   result.fold(
  //     (failure) =>
  //         Get.snackbar('Error', failure.message ?? "Unexpected error occured"),
  //     (success) {
  //       sharedPreferencesService.setIsLoggedIn(false);
  //       user.value = null;
  //       Get.offAllNamed(Routes.welcomeViewRoute);
  //     },
  //   );
  //   isLoading.value = false;
  // }

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
    usernameController.dispose();
    super.onClose();
  }
}
