import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/features/miscellaneous/views/dialog_view.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';
import '../../../utils/validators.dart';
import '../controllers/auth_controller.dart';

class ForgotPasswordView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthController authController = Get.find<AuthController>();

  ForgotPasswordView({super.key});

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
                      'Forgot Password',
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
                    Text(
                      'Select contact details where you want to reset your password.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16.sp,
                        color: const Color(0xff736a66),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h),
                    // Add your form fields here
                    TextFormField(
                      controller: authController.emailController,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            SvgAssets.email,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => Validators.validateEmail(value),
                    ),
                    SizedBox(height: defaultSpacing.h),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print(authController.emailController.value
                              .toString()
                              .trim());
                          // showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return ResendPasswordDialog(
                          //         email: authController
                          //             .emailController.value.text
                          //             .toString()
                          //             .trim(),
                          //       );
                          //     });

                          // Get.toNamed(Routes.dialogRoute);
                          Get.to(DialogView(
                            content: authController.emailController.value.text
                                .trim(),
                          ));
                          // TODO: Implement forgot password logic
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        minimumSize: const Size(double.infinity, 56),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Reset Password'),
                          SizedBox(
                            width: defaultHorizontalPadding.w,
                          ),
                          SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset(
                              SvgAssets.arrowRightSmall,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: defaultSpacing.h * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Remember your password?'),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: successColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
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
