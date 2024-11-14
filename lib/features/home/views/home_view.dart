import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/features/dashboard/views/dashboard_view.dart';
import 'package:clubcon/features/miscellaneous/views/under_maintainence_view.dart';
import 'package:clubcon/features/profile/views/profile_view.dart';

import 'package:clubcon/features/home/controllers/home_controller.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.find();
  HomeView({super.key});
  final List<Widget> screens = [
    const DashboardView(),
    // ExploreView(),
    // CommunityView(),
    // StatsView(),
    // const UnderMaintenanceScreen(),
    const UnderMaintenanceScreen(),
    const UnderMaintenanceScreen(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: screens,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: const Color(0xFFE8DDD9),
          items: [
            CurvedNavigationBarItem(
              child: SvgPicture.asset(
                SvgAssets.home,
              ),
              label: 'Home',
            ),
            // CurvedNavigationBarItem(
            //   child: SvgPicture.asset(SvgAssets.search),
            //   label: 'Explore',
            // ),
            // CurvedNavigationBarItem(
            //   child: SvgPicture.asset(SvgAssets.bookmark),
            //   label: 'Notice',
            // ),

            CurvedNavigationBarItem(
              child: SvgPicture.asset(SvgAssets.community),
              label: 'Community',
            ),
            CurvedNavigationBarItem(
              child: SvgPicture.asset(SvgAssets.stats),
              label: 'Stats',
            ),
            CurvedNavigationBarItem(
              child: SvgPicture.asset(SvgAssets.user),
              label: 'Personal',
            ),
          ],
          onTap: (index) {
            controller.currentIndex.value = index;
          },
        ),
      ),
    );
  }
}
