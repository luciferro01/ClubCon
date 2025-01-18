// lib/features/profile/widgets/profile_skeleton.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/shimmer_skeleton.dart';

class ProfileSkeleton extends StatelessWidget {
  const ProfileSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            // Avatar skeleton
            ShimmerSkeleton(
              width: 100.w,
              height: 100.h,
              borderRadius: 50.r,
            ),
            SizedBox(height: 16.h),
            // Name skeleton
            ShimmerSkeleton(
              width: 200.w,
              height: 24.h,
            ),
            SizedBox(height: 8.h),
            // Bio skeleton
            ShimmerSkeleton(
              width: double.infinity,
              height: 16.h,
            ),
            SizedBox(height: 24.h),
            // Settings tiles skeleton
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              separatorBuilder: (_, __) => SizedBox(height: 16.h),
              itemBuilder: (_, __) => ShimmerSkeleton(
                width: double.infinity,
                height: 60.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
