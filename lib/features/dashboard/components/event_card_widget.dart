import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/ui_constants.dart';

class EventCardWidget extends StatelessWidget {
  final String poster;
  final String? title;
  final String eventTitle;
  final String eventDescription;
  final int count;
  const EventCardWidget(
      {super.key,
      required this.poster,
      this.title,
      required this.count,
      required this.eventTitle,
      required this.eventDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(
            title!,
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
          height: 200.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 300.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      defaultBorderRadious.w / 2,
                    ),
                    color: Colors.greenAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Image.asset(poster)),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              bottom:
                                  Radius.circular(defaultBorderRadious.w / 2.r),
                            )),
                        width: double.infinity,
                        height: 75.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultSpacing.w / 2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              eventTitle,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: defaultSpacing.h * 0.01,
                            ),
                            Text(
                              eventDescription,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: defaultPadding.w,
                );
              },
              itemCount: 6),
        )
      ],
    );
  }
}
