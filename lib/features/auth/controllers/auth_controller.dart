import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool isLogin = false.obs;
  final RxBool isSignUp = false.obs;
  final RxBool isForgotPassword = false.obs;

  void showLogin() {
    isLogin.value = true;
    isSignUp.value = false;
    isForgotPassword.value = false;
  }

  void showSignUp() {
    isLogin.value = false;
    isSignUp.value = true;
    isForgotPassword.value = false;
  }

  void showForgotPassword() {
    isLogin.value = false;
    isSignUp.value = false;
    isForgotPassword.value = true;
  }
}
