import 'package:flutter/material.dart';
// background: #1DBF73;

class AppColors {
  static const Color primaryColor = Colors.blueAccent;

  /// Greys Colors
  static const Color grey100 = Color(0xfffafafa);
  static const Color grey200 = Color(0xfff6f6f6);
  static const Color grey300 = Color(0xffeeeeee);
  static const Color grey400 = Color(0xffdddddd);
  static const Color grey500 = Color(0xffcccccc);
  static const Color grey600 = Color(0xff999999);
  static const Color grey700 = Color(0xff666666);
  static const Color grey800 = Color(0xff595959);
  static const Color grey900 = Color(0xff333333);

  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff170605);
  static const Color red = Color(0xffCD3C14);
  // Color(0xffFFF0ED)

  static const Color errColor50 = Color(0xffFFF0ED);
  static const Color errColor300 = Color(0xffF56342);
}

class AppDarkColors {
  AppDarkColors._();
  static final AppDarkColors instance = AppDarkColors._();

  static const Color background = Color(0xff170605);
  static const Color blueLight = Color(0xFF37B6E9);
  static const Color blueDark = Color(0xFF4B4CED);
  static const Color navBarDark = Color(0xff2b3361);
  static const Color white = Color(0xFFffffff);
  static const Color black1 = Color(0xff353F54);
  static const Color black2 = Color(0xff222834);
}

class AppLightColors {
  AppLightColors._();
  static final AppLightColors instance = AppLightColors._();

  // static const Color background = Color(0xfffafafa);
  static Color background = AppColors.grey200;

  static const Color pinkLight = Color(0xFFEE637A);
  static const Color pinkDark = Color(0xFF99162B);
  static const Color black = Color(0xff170605);
}
