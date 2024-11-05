import 'package:clubcon/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants/ui_constants.dart';

class DialogView extends StatelessWidget {
  final String content;
  final String banner;
  final String? description;
  final Function? onTap;
  final String? buttonText;
  final bool hasButton;
  final String? floatingButtonImage;
  final String? buttonImage;
  final Function? floatingButtonOnTap;
  const DialogView(
      {super.key,
      required this.content,
      required this.banner,
      this.description,
      this.onTap,
      this.buttonText,
      required this.hasButton,
      this.floatingButtonImage,
      this.floatingButtonOnTap,
      this.buttonImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: Container(
                width: 340.w,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(40.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x194b3425),
                      offset: Offset(0, 14),
                      blurRadius: 31,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SvgPicture.asset(
                              banner,
                              // fallbackHeight: 248.h,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        content,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 24.sp,
                                          color: const Color(0xff4e3321),
                                          fontWeight: FontWeight.normal,
                                        ),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.h),
                                if (description != null)
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          description!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 18.sp,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal,
                                          ),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      if (hasButton)
                        ElevatedButton(
                          onPressed: () {
                            debugPrint("onPressed");
                            if (onTap != null) {
                              onTap!();
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
                              Text(buttonText ?? 'Reset Password'),
                              SizedBox(
                                width: defaultHorizontalPadding.w,
                              ),
                              SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  buttonImage ?? SvgAssets.arrowRightSmall,
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
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Container(
                      //         height: 56.h,
                      //         decoration: BoxDecoration(
                      //           color: const Color(0xff4e3321),
                      //           borderRadius: BorderRadius.circular(1000.r),
                      //         ),
                      //         child: Padding(
                      //           padding: EdgeInsets.symmetric(
                      //               horizontal: 28.w, vertical: 16.h),
                      //           child: Row(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               Text(
                      //                 buttonText ??
                      //                     "Please Give the Button Text",
                      //                 textAlign: TextAlign.left,
                      //                 style: TextStyle(
                      //                   decoration: TextDecoration.none,
                      //                   fontSize: 16.sp,
                      //                   color: const Color(0xffffffff),
                      //                   fontWeight: FontWeight.normal,
                      //                 ),
                      //                 maxLines: 2,
                      //                 overflow: TextOverflow.ellipsis,
                      //               ),
                      //               SizedBox(width: 12.w),
                      //               SvgPicture.asset(
                      //                 SvgAssets.arrowRightSmall,
                      //                 colorFilter: const ColorFilter.mode(
                      //                     Colors.white, BlendMode.srcIn),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (floatingButtonOnTap != null) {
                  floatingButtonOnTap!();
                } else {
                  Get.back();
                }
              },
              child: Container(
                margin: EdgeInsets.only(top: defaultSpacing.h * 2),
                padding: EdgeInsets.all(defaultPadding.w * 1.4),
                width: 80.w,
                height: 80.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: SvgPicture.asset(
                  floatingButtonImage ?? SvgAssets.close,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
