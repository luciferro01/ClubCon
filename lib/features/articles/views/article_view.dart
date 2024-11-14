import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/constants/ui_constants.dart';
import 'package:clubcon/features/articles/components/info_chip_widget.dart';
import 'package:clubcon/widgets/rounded_svg_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/article_controller.dart';

class ArticleView extends StatelessWidget {
  final ArticleController controller = Get.put(ArticleController());

  ArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Banner Section
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                height: 300.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(controller.article.bannerUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundedSvgButton(
                          svgAsset: SvgAssets.chevronLeft,
                          onTap: () {
                            Get.back();
                          },
                        ),
                        Obx(
                          () => IconButton(
                            icon: Icon(
                              controller.isLiked.value
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.redAccent,
                            ),
                            onPressed: controller.toggleLike,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: defaultSpacing.h),
                    Text(
                      controller.article.title,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: defaultSpacing.h,
                    ),
                  ],
                ),
              ),
              // Info Section
              Positioned(
                top: 260.h,
                left: 20.w,
                right: 20.w,
                child: Container(
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(defaultBorderRadious.r / 2),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoChip(
                        label: controller.article.timeToRead,
                        trailingMessage: 'Minutes',
                        icon: SvgAssets.clock,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadious.r),
                        ),
                        height: 40.h,
                        width: 2,
                      ),
                      InfoChip(
                        label: controller.article.rating,
                        trailingMessage: 'Score',
                        icon: SvgAssets.star,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadious.r),
                        ),
                        height: 40.h,
                        width: 2,
                      ),
                      InfoChip(
                        label: controller.article.views,
                        trailingMessage: 'Views',
                        icon: SvgAssets.search,
                      ),
                    ],
                  ),
                ),
              ),
              // Article Content
              Padding(
                padding: EdgeInsets.only(top: 370.h, left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    MarkdownBody(
                      data: controller.article.content,
                      styleSheet: MarkdownStyleSheet(
                        p: TextStyle(fontSize: 16.sp),
                        h2: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        h3: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        code: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
