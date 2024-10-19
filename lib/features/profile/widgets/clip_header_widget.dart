import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/ui_constants.dart';
import '../widgets/custom_clipper_widget.dart';

class ClipHeaderWidget extends StatelessWidget {
  final String title;
  final String svgAsset;
  final VoidCallback onTap;
  final double? headerHeight;

  const ClipHeaderWidget({
    super.key,
    required this.title,
    required this.svgAsset,
    required this.onTap,
    this.headerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Customshape(),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultHorizontalPadding.w,
            vertical: defaultVerticalPadding.h * 5),
        height: headerHeight ?? 240.h,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(2.0.w), // Padding around the SVG
                    decoration: const BoxDecoration(
                      color: blackColor20, // Circle color
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.all(6.0.w), // Padding inside the circle
                      decoration: const BoxDecoration(
                        color: blackColor20,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        svgAsset,
                        height: 24.h, // Increased size
                        width: 24.w, // Increased size
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: defaultSpacing.w,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 48.w), // Placeholder to balance the row
              ],
            ),
          ],
        ),
      ),
    );
  }
}
