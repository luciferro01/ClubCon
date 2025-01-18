import 'package:clubcon/theme/button_theme.dart';
import 'package:clubcon/theme/input_decoration_theme.dart';
import 'package:clubcon/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/ui_constants.dart';
import 'checkbox_themedata.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      primarySwatch: primaryMaterialColor,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: const Color(0xFFf7f4f2),
      iconTheme: const IconThemeData(color: blackColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: primaryColor),
      ),
      elevatedButtonTheme: elevatedButtonThemeData,
      textButtonTheme: textButtonThemeData,
      outlinedButtonTheme: outlinedButtonTheme(),
      inputDecorationTheme: lightInputDecorationTheme,
      checkboxTheme: checkboxThemeData.copyWith(
        side: const BorderSide(color: blackColor40),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(primaryColor),
        trackColor: WidgetStateProperty.all(whileColor80),
      ),
      appBarTheme: appBarLightTheme,
      scrollbarTheme: scrollbarThemeData,
      dataTableTheme: dataTableLightThemeData,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primaryMaterialColor,
      ).copyWith(secondary: secondaryColor),
    );
  }

  // Dark Theme
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      primarySwatch: primaryMaterialColor,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: const Color(0xFF121212),
      iconTheme: const IconThemeData(color: whiteColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: whiteColor),
        bodyLarge: TextStyle(color: whiteColor),
        bodySmall: TextStyle(color: Colors.white70),
      ),
      elevatedButtonTheme: elevatedButtonThemeData,
      textButtonTheme: textButtonThemeData,
      outlinedButtonTheme: outlinedButtonTheme(),
      inputDecorationTheme: darkInputDecorationTheme,
      checkboxTheme: checkboxThemeData.copyWith(
        side: const BorderSide(color: Colors.white70),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(primaryColor),
        trackColor: WidgetStateProperty.all(whileColor40),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        iconTheme: const IconThemeData(color: whiteColor),
        titleTextStyle: TextStyle(
          color: whiteColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      scrollbarTheme: scrollbarThemeData.copyWith(
        thumbColor: WidgetStateProperty.all(Colors.white70),
      ),
      cardColor: const Color(0xFF1E1E1E),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: const Color(0xFF1E1E1E),
      ),
    );
  }
}
