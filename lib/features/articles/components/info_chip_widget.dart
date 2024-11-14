import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoChip extends StatelessWidget {
  final String label;
  final String icon;
  final String trailingMessage;

  const InfoChip({
    super.key,
    required this.label,
    required this.icon,
    required this.trailingMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
      decoration: BoxDecoration(
        // color: Colors.grey.shade200,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(icon),
              SizedBox(
                width: defaultPadding.w * 0.2,
              ),
              Text(trailingMessage),
            ],
          )
        ],
      ),
    );
  }
}
