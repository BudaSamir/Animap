import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.primaryColor,
    required this.background,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });
  final Color? primaryColor;
  final Color? background;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;
  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primaryColor,
    Color? background,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
    Color? containerLinear2,
  }) =>
      ThemeColors(
        primaryColor: primaryColor,
        background: background,
        bluePinkDark: bluePinkDark,
        bluePinkLight: bluePinkLight,
        textColor: textColor,
        textFormBorder: textFormBorder,
        navBarbg: navBarbg,
        navBarSelectedTab: navBarSelectedTab,
        containerShadow1: containerShadow1,
        containerShadow2: containerShadow2,
        containerLinear1: containerLinear1,
        containerLinear2: containerLinear2,
      );

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) return this;
    return ThemeColors(
      primaryColor: primaryColor,
      background: background,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  static ThemeColors dark = const ThemeColors(
    primaryColor: AppColors.primaryColor,
    background: AppDarkColors.background,
    bluePinkDark: AppDarkColors.blueDark,
    bluePinkLight: AppDarkColors.blueLight,
    textColor: AppDarkColors.white,
    textFormBorder: AppDarkColors.blueLight,
    navBarbg: AppDarkColors.navBarDark,
    navBarSelectedTab: AppDarkColors.white,
    containerShadow1: AppDarkColors.black1,
    containerShadow2: AppDarkColors.black2,
    containerLinear1: AppDarkColors.black1,
    containerLinear2: AppDarkColors.black2,
  );

  static ThemeColors light = ThemeColors(
    primaryColor: AppColors.primaryColor,
    background: AppLightColors.background,
    bluePinkDark: AppLightColors.pinkDark,
    bluePinkLight: AppLightColors.pinkLight,
    textColor: AppLightColors.black,
    textFormBorder: AppLightColors.pinkLight,
    navBarbg: AppColors.primaryColor,
    navBarSelectedTab: AppLightColors.pinkDark,
    containerShadow1: AppColors.white,
    containerShadow2: AppColors.white,
    containerLinear1: AppLightColors.pinkDark,
    containerLinear2: AppLightColors.pinkLight,
  );
}
