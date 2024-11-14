import 'package:clubcon/theme/button_theme.dart';
import 'package:clubcon/theme/input_decoration_theme.dart';
import 'package:clubcon/theme/theme_data.dart';
import 'package:flutter/material.dart';
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
      scaffoldBackgroundColor: darkGreyColor,
      iconTheme: const IconThemeData(color: whiteColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white70),
      ),
      elevatedButtonTheme: elevatedButtonThemeData,
      textButtonTheme: textButtonThemeData,
      outlinedButtonTheme: outlinedButtonTheme(),
      inputDecorationTheme: lightInputDecorationTheme,
      checkboxTheme: checkboxThemeData.copyWith(
        side: const BorderSide(color: Colors.white38),
      ),
      appBarTheme: appBarLightTheme.copyWith(
        backgroundColor: blackColor,
        iconTheme: const IconThemeData(color: whiteColor),
      ),
      scrollbarTheme: scrollbarThemeData.copyWith(
        thumbColor: MaterialStateProperty.all(whiteColor),
      ),
      dataTableTheme: dataTableLightThemeData.copyWith(
        headingTextStyle: const TextStyle(color: whiteColor),
        dataTextStyle: const TextStyle(color: whiteColor),
      ),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: primaryColor,
        secondary: secondaryColor,
      ),
    );
  }
}
