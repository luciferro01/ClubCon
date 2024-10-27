import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/image_constants.dart';
import '../../../constants/ui_constants.dart';

class SettingsTileWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String svg;
  final bool? isDiffer;
  final Widget? trailingWidget;

  const SettingsTileWidget(
      {super.key,
      this.onTap,
      required this.title,
      required this.svg,
      this.isDiffer,
      this.trailingWidget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: defaultHorizontalPadding.w,
            vertical: defaultVerticalPadding.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(defaultBorderRadious.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(6.0.w), // Padding inside the circle
                  decoration: const BoxDecoration(
                    color: blackColor20,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svg,
                    height: 24.h, // Increased size
                    width: 24.w, // Increased size
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(width: defaultHorizontalPadding.w),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            if (isDiffer == null || isDiffer == false)
              GestureDetector(
                onTap: onTap,
                child: SvgPicture.asset(SvgAssets.chevronRight),
              )
            else
              trailingWidget!,
          ],
        ),
      ),
    );
  }
}
