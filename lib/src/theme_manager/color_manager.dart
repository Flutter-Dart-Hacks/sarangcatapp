import 'package:flutter/material.dart';

class ColorManager {
  static Color cPrimaryColor = HexColor.fromHex('#03091C');
  static Color cSecondary = HexColor.fromHex('#262f4b');
  static Color cWhite = HexColor.fromHex('#ffffff');
  static Color cPink = HexColor.fromHex('#ea887b');
  static Color cPurple = HexColor.fromHex('#ce92e3');
  static Color cBlack = HexColor.fromHex('#5b6279');
  static Color cBlack30 = HexColor.fromHex('#8D93A8');
  static Color cBlack60 = HexColor.fromHex('#737d9c');
  static Color cGrey = HexColor.fromHex('#d9d9d9');
  static Color cGrey60 = HexColor.fromHex('#a9a9ac');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
