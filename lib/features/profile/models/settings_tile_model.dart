import 'package:clubcon/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/theme_controller.dart';

final themeController = Get.find<ThemeController>();

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

List<SettingsTileModel> generalSettingsTiles = [
  SettingsTileModel(
    title: "Notifications",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.bell,
    onTap: () {},
  ),
  SettingsTileModel(
    title: "Personal Information",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.user,
    onTap: () {},
  ),
  SettingsTileModel(
    title: "Emergency Contact",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.warning,
    onTap: () {},
  ),
  SettingsTileModel(
    title: "Language",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.flag,
    onTap: () {},
  ),
  SettingsTileModel(
    title: "Dark Mode",
    isDiffer: true,
    trailingWidget: Obx(
      () => Switch(
        value: themeController.isDarkMode.value,
        onChanged: (value) {
          themeController.toggleTheme(value);
        },
      ),
    ),
    svg: SvgAssets.moon,
    onTap: () {},
  ),
  SettingsTileModel(
    title: "Submit Feedback",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.quote,
    onTap: () {},
  ),
];

List<SettingsTileModel> securityAndPrivacyTiles = [
  SettingsTileModel(
    title: "Security",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.lock,
    onTap: () {},
  ),
  SettingsTileModel(
    title: "Help Center",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.chat,
    onTap: () {},
  ),
];

List<SettingsTileModel> logOut = [
  SettingsTileModel(
    title: "Log Out",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.logout,
    onTap: () {},
  ),
];

List<SettingsTileModel> dangerZone = [
  SettingsTileModel(
    title: "Close Account",
    isDiffer: false,
    trailingWidget: null,
    svg: SvgAssets.shield,
    onTap: () {},
  ),
];
