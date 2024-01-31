import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarangcatapp/src/theme_manager/color_manager.dart';
import 'package:sarangcatapp/src/theme_manager/fonts_managers.dart';

TextStyle _getTextStyle(
  double fontsize,
  String fontfamily,
  FontWeight fontweight,
  Color color,
) {
  return GoogleFonts.poppins().copyWith(
      fontFamily: fontfamily,
      fontSize: fontsize,
      fontWeight: fontweight,
      color: color);
}

TextStyle getWhiteTextStyle({
  double fontsize = FontSizeManager.fontSize16,
  FontWeight fontweight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontsize, FontFamilyConstants.fontFamily, fontweight,
      ColorManager.cWhite);
}

TextStyle getBlack60TextStyle({
  double fontsize = FontSizeManager.fontSize16,
  FontWeight fontweight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontsize, FontFamilyConstants.fontFamily, fontweight,
      ColorManager.cBlack60);
}

TextStyle getBlack30TextStyle({
  double fontsize = FontSizeManager.fontSize16,
  FontWeight fontweight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontsize, FontFamilyConstants.fontFamily, fontweight,
      ColorManager.cBlack30);
}

TextStyle getBlackTextStyle({
  double fontsize = FontSizeManager.fontSize16,
  FontWeight fontweight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontsize, FontFamilyConstants.fontFamily, fontweight,
      ColorManager.cBlack);
}

TextStyle getGrey60TextStyle({
  double fontsize = FontSizeManager.fontSize16,
  FontWeight fontweight = FontWeightManager.regular,
}) {
  return _getTextStyle(fontsize, FontFamilyConstants.fontFamily, fontweight,
      ColorManager.cGrey60);
}
