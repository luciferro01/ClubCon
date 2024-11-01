import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/features/dashboard/components/event_card_widget.dart';
import 'package:clubcon/features/dashboard/data/data.dart';
import 'package:clubcon/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/ui_constants.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: defaultVerticalPadding.h * 4,
                  left: defaultHorizontalPadding.w,
                  right: defaultHorizontalPadding.w,
                  bottom: defaultVerticalPadding.h * 1.5),
              // height: defaultAppBarHeight.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: blackColor20,
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(defaultBorderRadious.h),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            SvgAssets.calendar,
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(width: 6.w),
                          const Text(
                            'Mon, 11 Nov 2024',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        SvgAssets.bell,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultSpacing.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        width: 60.w,
                        height: 60.h,
                        ImageAssets.profile,
                      ),
                      SizedBox(width: defaultSpacing.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Mohil!",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 20.sp,
                            ),
                          ),
                          SizedBox(height: defaultSpacing.h * 0.01),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 2.w),
                                decoration: BoxDecoration(
                                  color: blackColor10,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(200.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      SvgAssets.user,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    SizedBox(width: defaultSpacing.w * 0.16),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: defaultSpacing.w * 0.02),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 2.w),
                                decoration: BoxDecoration(
                                  // color: blackColor10,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(200.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      SvgAssets.user,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    SizedBox(width: defaultSpacing.w * 0.16),
                                    Text(
                                      "20 Y",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: defaultSpacing.w * 0.02),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 2.w),
                                decoration: BoxDecoration(
                                  // color: blackColor10,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(200.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      SvgAssets.stats,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    SizedBox(width: defaultSpacing.w * 0.16),
                                    Text(
                                      "Clubs : 3",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultSpacing.h / 2,
                  ),
                  CustomInputField(
                    suffixIcon: SvgPicture.asset(
                      SvgAssets.search,
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Search Clubs ...",
                    fillColor: blackColor10,
                    hasBorder: false,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  defaultHorizontalPadding.w,
                  defaultVerticalPadding.h,
                  defaultHorizontalPadding.w,
                  defaultVerticalPadding.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Clubs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: defaultSpacing.h * 0.2,
                  ),
                  SizedBox(
                    height: 70.h,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 70.w,
                            height: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200.r),
                              color: Colors.greenAccent,
                              image: DecorationImage(
                                image: AssetImage(clubImages[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: defaultPadding.w,
                          );
                        },
                        itemCount: 6),
                  ),
                  SizedBox(height: defaultSpacing.h),
                  EventCardWidget(
                      poster: ImageAssets.profile,
                      count: 6,
                      title: "Upcoming Events",
                      eventTitle: "Event Title",
                      eventDescription: "Description"),
                  SizedBox(height: defaultSpacing.h),
                  EventCardWidget(
                      poster: ImageAssets.profile,
                      count: 6,
                      title: "Past Events",
                      eventTitle: "Event Title",
                      eventDescription: "Description"),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultHorizontalPadding.w),
                    child: Row(
                      children: [
                        Text(
                          "Upcoming Events",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(width: defaultSpacing.w * 0.1),
                        Text(
                          "Past Events",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(width: defaultSpacing.w * 0.1),
                      ],
                    ),
                  ),
                  SizedBox(height: defaultSpacing.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
