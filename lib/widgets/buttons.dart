import 'package:clubcon/constants/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClubConElevatedButton extends StatelessWidget {
  final String buttonText;
  final String svgImage;
  final Function() onPressed;

  const ClubConElevatedButton(
      {super.key,
      required this.buttonText,
      required this.svgImage,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
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
          Text(buttonText),
          SizedBox(
            width: defaultHorizontalPadding.w,
          ),
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: SvgPicture.asset(
              // SvgAssets.arrowRightSmall,
              svgImage,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
