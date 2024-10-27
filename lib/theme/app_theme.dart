import 'package:clubcon/theme/button_theme.dart';
import 'package:clubcon/theme/input_decoration_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/ui_constants.dart';
import 'checkbox_themedata.dart';
import 'theme_data.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: GoogleFonts.urbanist().fontFamily,
      primarySwatch: primaryMaterialColor,
      primaryColor: primaryColor,
      // scaffoldBackgroundColor: lightGreyColor,
      scaffoldBackgroundColor: const Color(0xFFf7f4f2),
      iconTheme: const IconThemeData(color: blackColor),
      textTheme: const TextTheme(
        // bodyMedium: TextStyle(color: blackColor40),
        bodyMedium: TextStyle(color: primaryMaterialColor),
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
      ).copyWith(
        secondary: secondaryColor,
      ),
    );
  }
}
