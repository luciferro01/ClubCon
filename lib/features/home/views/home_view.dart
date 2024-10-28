// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/features/dashboard/views/dashboard_view.dart';
import 'package:clubcon/features/miscellaneous/views/under_maintainence_view.dart';
import 'package:clubcon/features/notice/views/notice_view.dart';
import 'package:clubcon/features/profile/views/profile_view.dart';
import 'package:clubcon/features/search/views/search_view.dart';
import 'package:clubcon/features/stats/views/stats_view.dart';

import 'package:clubcon/features/home/controllers/home_controller.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  HomeView({super.key});
  final List<Widget> screens = [
    const DashboardView(),
    // SearchView(),
    // NoticeView(),
    // StatsView(),
    const UnderMaintenanceScreen(),
    const UnderMaintenanceScreen(),
    const UnderMaintenanceScreen(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: screens,
          )),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: [
          CurvedNavigationBarItem(
            child: SvgPicture.asset(SvgAssets.home),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: SvgPicture.asset(SvgAssets.search),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: SvgPicture.asset(SvgAssets.bookmark),
            label: 'Notice',
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
    );
  }
}
