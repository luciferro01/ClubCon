// lib/features/dashboard/widgets/dashboard_skeleton.dart
import 'package:clubcon/widgets/shimmer_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardSkeleton extends StatelessWidget {
  const DashboardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Header skeleton
          ShimmerSkeleton(
            width: double.infinity,
            height: 200.h,
          ),
          SizedBox(height: 16.h),
          // Club cards skeleton
          SizedBox(
            height: 70.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              separatorBuilder: (_, __) => SizedBox(width: 16.w),
              itemBuilder: (_, __) => ShimmerSkeleton(
                width: 70.w,
                height: 70.h,
                borderRadius: 35.r,
              ),
            ),
          ),
          // Event cards skeleton
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            separatorBuilder: (_, __) => SizedBox(height: 16.h),
            itemBuilder: (_, __) => ShimmerSkeleton(
              width: double.infinity,
              height: 120.h,
            ),
          ),
        ],
      ),
    );
  }
}
