import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/features/profile/controllers/profile_controller.dart';
import 'package:clubcon/features/profile/models/settings_tile_model.dart';
import 'package:clubcon/features/profile/widgets/clip_header_widget.dart';
import 'package:clubcon/features/profile/widgets/settings_tile_widget.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/ui_constants.dart';
import '../../home/controllers/home_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController _profileController = Get.find();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Hero(
              tag: "Profile Header Widget",
              child: ClipHeaderWidget(
                title: "My Profile",
                titleIsCenter: true,
                svgAsset: SvgAssets.chevronLeft,
                suffixSvg: SvgAssets.edit,
                onTapSuffixIcon: () {
                  _profileController.fetchUserProfile();
                  Get.toNamed(
                    Routes.profileSetupViewRoute,
                    arguments: {"isEdit": true},
                  );
                  debugPrint('Edit icon tapped');
                },
                backgroundImage: ImageAssets.leaves,
                onTap: () {
                  Get.find<HomeController>().currentIndex.value = 0;
                  debugPrint('Back Button Pressed');
                },
              ),
            ),
            Positioned(
              top: 180.h, // Adjust this value to control the overlap
              left: MediaQuery.of(context).size.width / 2 -
                  50.r, // Center the CircleAvatar
              child: CircleAvatar(
                radius: 50.r,
                backgroundImage: const NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/011/490/381/large_2x/happy-smiling-young-man-avatar-3d-portrait-of-a-man-cartoon-character-people-illustration-isolated-on-white-background-vector.jpg")
                    as ImageProvider,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 40.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 250),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultHorizontalPadding.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Mohil Bansal",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w900,
                              fontSize: 26.sp),
                        ),
                        SizedBox(height: 2.h),
                        const Text("Final Year")
                      ],
                    ),
                  ),
                  SizedBox(height: defaultSpacing.h),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: defaultHorizontalPadding.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Settings",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(height: defaultSpacing.h * 0.2),
                        ListView.separated(
                          padding:
                              EdgeInsets.only(top: defaultVerticalPadding.h),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SettingsTileWidget(
                                title: generalSettingsTiles[index].title,
                                svg: generalSettingsTiles[index].svg,
                                isDiffer: generalSettingsTiles[index].isDiffer,
                                trailingWidget:
                                    generalSettingsTiles[index].trailingWidget,
                                onTap: generalSettingsTiles[index].onTap);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: defaultSpacing.h / 2,
                            );
                          },
                          itemCount: generalSettingsTiles.length,
                        ),
                        SizedBox(height: defaultSpacing.h),
                        Text(
                          "Security & Privacy",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        ListView.separated(
                          padding:
                              EdgeInsets.only(top: defaultVerticalPadding.h),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SettingsTileWidget(
                                title: securityAndPrivacyTiles[index].title,
                                svg: securityAndPrivacyTiles[index].svg,
                                isDiffer:
                                    securityAndPrivacyTiles[index].isDiffer,
                                trailingWidget: securityAndPrivacyTiles[index]
                                    .trailingWidget,
                                onTap: securityAndPrivacyTiles[index].onTap);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: defaultSpacing.h / 2,
                            );
                          },
                          itemCount: securityAndPrivacyTiles.length,
                        ),
                        SizedBox(height: defaultSpacing.h),
                        Text(
                          "Danger Zone",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        ListView.separated(
                          padding:
                              EdgeInsets.only(top: defaultVerticalPadding.h),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SettingsTileWidget(
                                title: dangerZone[index].title,
                                svg: dangerZone[index].svg,
                                isDiffer: dangerZone[index].isDiffer,
                                trailingWidget:
                                    dangerZone[index].trailingWidget,
                                onTap: dangerZone[index].onTap);
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: defaultSpacing.h / 2,
                            );
                          },
                          itemCount: dangerZone.length,
                        ),
                        SizedBox(height: defaultSpacing.h),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        ListView.separated(
                          padding:
                              EdgeInsets.only(top: defaultVerticalPadding.h),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SettingsTileWidget(
                                title: logOut[index].title,
                                svg: logOut[index].svg,
                                isDiffer: logOut[index].isDiffer,
                                trailingWidget: logOut[index].trailingWidget,
                                onTap: () {
                                  // debugPrint
                                  _profileController.logout();
                                });
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: defaultSpacing.h / 2,
                            );
                          },
                          itemCount: logOut.length,
                        ),
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
