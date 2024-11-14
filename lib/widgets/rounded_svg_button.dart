import 'package:clubcon/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedSvgButton extends StatelessWidget {
  final String svgAsset;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? svgColor;
  final double? height;
  final double? width;
  const RoundedSvgButton(
      {super.key,
      required this.svgAsset,
      required this.onTap,
      this.backgroundColor = blackColor20,
      this.svgColor = Colors.white,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(2.0.w),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: EdgeInsets.all(6.0.w), // Padding inside the circle
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            svgAsset,
            height: height ?? 24.h, // Increased size
            width: width ?? 24.w, // Increased size
            colorFilter: ColorFilter.mode(
              svgColor!,
              BlendMode.srcIn,
            ),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
