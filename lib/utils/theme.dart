import 'package:flutter/material.dart';

const kCoLorPrimary = Color(0xff8e97fd);
const kColorLightYellow = Color(0xFFFFECCC);
const kColorLightGrey = Color(0xFFEBEAEC);
const kColorDarkGrey = Color(0xFF3F414E);

class PrimaryFont {
  static String fontFamily = 'HelveticaNeue';

  static TextStyle light(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: size,
    );
  }

  static TextStyle thin(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w100,
      fontSize: size,
    );
  }

  static TextStyle medium(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: size,
    );
  }
}
