import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clubcon/constants/image_constants.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(defaultPadding.w),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: defaultSpacing.h),
                padding: EdgeInsets.all(defaultPadding.w / 2),
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200.r),
                  color: primaryMaterialColor.shade100,
                ),
                child: SvgPicture.asset(SvgAssets.solidMenu),
              ),
              SizedBox(
                height: defaultSpacing.h,
              ),
              Text(
                "Welcome to the ultimate Student Community!",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: defaultSpacing.h,
              ),
              Text(
                "Your all-in-one campus companion, connecting you with every club, every society, anytime, anywhere 🌱",
                style: TextStyle(
                  fontSize: 20.sp,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Image.asset(
                ImageAssets.welcomeIllustration,
                fit: BoxFit.contain,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routes.onbordingViewRoute);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Get Started'),
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
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.logInViewRoute);
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
    );
  }
}
