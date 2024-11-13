import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/features/notification/components/notification_widget.dart';
import 'package:clubcon/features/notification/controllers/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationController controller = Get.put(NotificationController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: EdgeInsets.all(2.0.w),
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
                          SvgAssets.chevronLeft,
                          height: 24.h, // Increased size
                          width: 24.w, // Increased size
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: defaultSpacing.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 26.sp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      CircleAvatar(
                        minRadius: 30.r,
                        backgroundImage: const NetworkImage(
                            "https://static.vecteezy.com/system/resources/previews/011/490/381/large_2x/happy-smiling-young-man-avatar-3d-portrait-of-a-man-cartoon-character-people-illustration-isolated-on-white-background-vector.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: defaultSpacing.h,
              ),
              const Text(
                "Earlier This Day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ...controller.notifications.map(
                  (notification) => NotificationWidget(item: notification)),
              const SizedBox(height: 24),
              const Text(
                "Last Week",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                child: const Text(
                  'Show More...',
                ),
                onPressed: () {},
              ),
            ],
          );
        }),
      ),
    );
  }
}
