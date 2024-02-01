import 'package:flutter/material.dart';
import 'package:sarangcatapp/src/theme_manager/color_manager.dart';
import 'package:sarangcatapp/src/theme_manager/fonts_managers.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.cPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.cPrimaryColor,
      actionsIconTheme: const IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      background: ColorManager.cPrimaryColor,
      primary: ColorManager.cPrimaryColor,
      secondary: ColorManager.cSecondary,
    ),
    fontFamily: FontFamilyConstants.fontFamily,
  );
}
