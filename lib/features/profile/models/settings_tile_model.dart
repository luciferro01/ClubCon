import 'package:clubcon/constants/image_constants.dart';
import 'package:clubcon/core/controllers/user.controller.dart';
import 'package:clubcon/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/theme_controller.dart';

final themeController = Get.find<ThemeController>();
final UserController userController = Get.find<UserController>();

class SettingsTileModel {
  final VoidCallback? onTap;
  final String title;
  final String svg;
  final bool? isDiffer;
  final Widget? trailingWidget;

  SettingsTileModel(
      {required this.onTap,
      required this.title,
      required this.svg,
      required this.isDiffer,
      required this.trailingWidget});
}
