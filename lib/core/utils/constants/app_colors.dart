import 'package:flutter/material.dart';

class AppColors {
  static const Color shadowColor = Color(0x3F3E8E83);
  static const MaterialColor primaryColor = MaterialColor(
    0xff3e8e83,
    <int, Color>{
      50: Color(0xfff3faf8), // Lightest shade
      100: Color(0xffd8efe9), // Light shade
      200: Color(0xffa7dacf), // Medium light shade
      300: Color(0xff82c6b9), // Medium shade
      400: Color(0xff58a99d), // Medium dark shade
      500: Color(0xff3e8e83), // Base color
      600: Color(0xff30716b), // Dark shade
      700: Color(0xff295c57), // Darker shade
      800: Color(0xff254a47), // Even darker shade
      900: Color(0xff223f3c), // Darkest shade
      950: Color(0xff0f2423), // Extremely Darkest shade
    },
  );

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

  static const Color background = Color(0xffFAFAFA);
  static const Color pinkLight = Color(0xFFEE637A);
  static const Color pinkDark = Color(0xFF99162B);
  static const Color black = Color(0xff170605);
}
