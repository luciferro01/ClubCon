import 'package:clubcon/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  late PageController pageController;
  var pageIndex = 0.obs;

  final List<Onboard> onboardData = [
    Onboard(
      svg: SvgAssets.namasteIllustration,
      imageDarkTheme: "assets/illustrations/Illustration_darkTheme_0.png",
      description: "Personalize Your Student Experience with Clubs",
    ),
    Onboard(
      svg: SvgAssets.cryIllustration,
      imageDarkTheme: "assets/illustrations/Illustration_darkTheme_1.png",
      description: "No More Loneliness and discover new activities",
    ),
    Onboard(
      svg: SvgAssets.robotIllustration,
      imageDarkTheme: "assets/illustrations/Illustration_darkTheme_4.png",
      description: "Connect with a Super Community",
    ),
    Onboard(
      svg: SvgAssets.studyIllustration,
      imageDarkTheme: "assets/illustrations/Illustration_darkTheme_2.png",
      description: "Club Journals & Self-Reflection Spaces",
    ),
    Onboard(
      svg: SvgAssets.enjoyIllustration,
      imageDarkTheme: "assets/illustrations/Illustration_darkTheme_3.png",
      description: "Enriching Resources to Help You Thrive",
    ),
    Onboard(
      svg: SvgAssets.supportIllustration,
      imageDarkTheme: "assets/illustrations/Illustration_darkTheme_4.png",
      description: "Loving & Supportive Student Community",
    ),
  ];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void nextPage() {
    if (pageIndex.value < onboardData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Get.offNamed('/login'); // Navigate to login screen
    }
  }

  void previousPage() {
    if (pageIndex.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }
}

class Onboard {
  final String svg, description;
  final String? imageDarkTheme;

  Onboard({
    required this.svg,
    this.description = "",
    this.imageDarkTheme,
  });
}




// import 'package:clubcon/constants/image_constants.dart';
// import 'package:clubcon/constants/ui_constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class OnboardingView extends StatelessWidget {
//   const OnboardingView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       backgroundColor: theme.scaffoldBackgroundColor,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Stack(
//               children: [
//                 ClipPath(
//                   clipper: BottomClipper(),
//                   child: Container(
//                     height: double.infinity,
//                     width: double.infinity,
//                     color: theme.scaffoldBackgroundColor,
//                     child: SvgPicture.asset(
//                       SvgAssets.namasteIllustration,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Progress Indicator
//           Padding(
//             padding: EdgeInsets.symmetric(
//               vertical: defaultVerticalPadding.h,
//               horizontal: defaultHorizontalPadding.w,
//             ),
//             child: LinearProgressIndicator(
//               value: 0.33,
//               backgroundColor: theme.colorScheme.secondary.withOpacity(0.2),
//               color: theme.primaryColor,
//               minHeight: 8.h,
//               borderRadius: BorderRadius.circular(defaultBorderRadious.r),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Text(
//               'Personalize Your Student Experience with Clubs',
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: theme.colorScheme.primary,
//                   fontSize: 24.sp),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           // Arrow Buttons
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     // primary: theme.primaryColor,
//                     // maximumSize: Size(100.h, 600.w),
//                     minimumSize:
//                         Size(MediaQuery.sizeOf(context).width * 0.4, 80.h),

//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(defaultBorderRadious),
//                     ),
//                   ),
//                   child: SvgPicture.asset(
//                     SvgAssets.arrowLeftSmall,
//                     fit: BoxFit.cover,
//                     height: 50.h,
//                     width: 50.w,
//                     colorFilter:
//                         const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//                   ),
//                 ),
//                 // Right Arrow Button
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     // primary: theme.primaryColor,
//                     // maximumSize: Size(100.h, 600.w),
//                     minimumSize:
//                         Size(MediaQuery.sizeOf(context).width * 0.4, 80.h),

//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(defaultBorderRadious),
//                     ),
//                   ),
//                   child: SvgPicture.asset(
//                     SvgAssets.arrowRightSmall,
//                     fit: BoxFit.cover,
//                     height: 50.h,
//                     width: 50.w,
//                     colorFilter:
//                         const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

// // ClipPath Custom Clipper
// class BottomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, size.height - 100);
//     path.quadraticBezierTo(
//         size.width / 2, size.height - 150, size.width, size.height - 100);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
