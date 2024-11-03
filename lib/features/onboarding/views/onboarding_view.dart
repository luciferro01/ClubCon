import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants/ui_constants.dart';
import '../../../constants/image_constants.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  // final OnboardingController controller = Get.put(OnboardingController());
  final OnboardingController controller = Get.find();

  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipPath(
                  clipper: BottomClipper(),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: theme.scaffoldBackgroundColor,
                    child: PageView.builder(
                      controller: controller.pageController,
                      itemCount: controller.onboardData.length,
                      onPageChanged: (value) {
                        controller.pageIndex.value = value;
                      },
                      itemBuilder: (context, index) {
                        final onboard = controller.onboardData[index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SvgPicture.asset(
                                onboard.svg,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(height: 20.h),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Progress Indicator
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultHorizontalPadding.w,
            ),
            child: Obx(() {
              return LinearProgressIndicator(
                value: (controller.pageIndex.value + 1) /
                    controller.onboardData.length,
                backgroundColor: theme.colorScheme.secondary.withOpacity(0.2),
                color: theme.primaryColor,
                minHeight: 8.h,
                borderRadius: BorderRadius.circular(defaultBorderRadious.r),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Obx(() {
              return Text(
                controller.onboardData[controller.pageIndex.value].description,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: theme.colorScheme.primary,
                  fontSize: 24.sp,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              );
            }),
          ),
          // Arrow Buttons
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: defaultHorizontalPadding.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: controller.previousPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.sizeOf(context).width * 0.4.w, 80.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultBorderRadious),
                    ),
                  ),
                  child: SvgPicture.asset(
                    SvgAssets.arrowLeftSmall,
                    fit: BoxFit.cover,
                    height: 50.h,
                    width: 50.w,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
                ElevatedButton(
                  onPressed: controller.nextPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.sizeOf(context).width * 0.4.w, 80.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(defaultBorderRadious),
                    ),
                  ),
                  child: SvgPicture.asset(
                    SvgAssets.arrowRightSmall,
                    fit: BoxFit.cover,
                    height: 50.h,
                    width: 50.w,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// ClipPath Custom Clipper
class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height - 150, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
