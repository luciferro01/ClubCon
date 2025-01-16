import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/features/auth/views/forgot_password_view.dart';
import 'package:clubcon/features/auth/views/sign_up_view.dart';
import 'package:clubcon/features/auth/widgets/media_button.dart';
import 'package:clubcon/utils/validators.dart';
import 'package:clubcon/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';
import '../controllers/auth_controller.dart';
import '../../../widgets/custom_input_field.dart';

class LogInView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthController authController = Get.find();

  LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 140.h,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(200.r),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(
                  SvgAssets.solidMenu,
                  height: 50.h,
                  width: 50.w,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: defaultSpacing.h * 3,
            ),
            Padding(
              padding: EdgeInsets.all(16.0.w), // Responsive padding
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In To ClubCon',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30.sp, // Responsive font size
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                    SizedBox(
                      height: defaultSpacing.h * 2,
                    ),
                    CustomInputField(
                      hintText: "Email Address",
                      labelText: 'Email Address',
                      controller: authController.emailController,
                      prefixIcon: SizedBox(
                        height: 24.h,
                        width: 24.w,
                        child: SvgPicture.asset(
                          SvgAssets.email,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      isEnabled: true,
                      validator: Validators.validateEmail,
                    ),
                    SizedBox(height: defaultSpacing.h),
                    Obx(() => CustomInputField(
                          hintText: "Enter Password",
                          labelText: 'Password',
                          controller: authController.passwordController,
                          prefixIcon: SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset(
                              SvgAssets.lock,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: authController.toggleObscurePassword,
                            child: SvgPicture.asset(
                              authController.obscurePassword.value
                                  ? SvgAssets.eyeDisabled
                                  : SvgAssets.eyeEnabled,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          isEnabled: true,
                          obscureText: authController.obscurePassword.value,
                          validator: Validators.validatePassword,
                        )),
                    const SizedBox(height: 24),
                    Obx(
                      () {
                        if (authController.isLoading.value) {
                          return const CircularProgressIndicator();
                        } else {
                          return ClubConElevatedButton(
                            buttonText: "Sign In",
                            svgImage: SvgAssets.arrowRightSmall,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                authController.login();
                              }
                            },
                          );
                        }
                      },
                    ),
                    SizedBox(height: defaultSpacing.h * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MediaButton(
                          widget: SvgPicture.asset(
                            SvgAssets.apple,
                            fit: BoxFit.scaleDown,
                          ),
                          onPressed: () {},
                          minSize: Size(20.h, 20.w),
                        ),
                        SizedBox(
                          width: defaultSpacing.w,
                        ),
                        MediaButton(
                          widget: SvgPicture.asset(
                            SvgAssets.google,
                            fit: BoxFit.scaleDown,
                          ),
                          onPressed: () {},
                          minSize: Size(20.h, 20.w),
                        ),
                        SizedBox(
                          width: defaultSpacing.w,
                        ),
                        MediaButton(
                          widget: SvgPicture.asset(
                            SvgAssets.windows,
                            fit: BoxFit.scaleDown,
                          ),
                          onPressed: () {},
                          minSize: Size(20.h, 20.w),
                        ),
                      ],
                    ),
                    SizedBox(height: defaultSpacing.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpView(),
                            ));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: successColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgotPasswordView(),
                        ));
                      },
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: successColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
