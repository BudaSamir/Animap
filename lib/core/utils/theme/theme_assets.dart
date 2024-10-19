import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class ThemeAssets extends ThemeExtension<ThemeAssets> {
  const ThemeAssets({
    required this.bigNavBar,
    required this.homeBg,
  });
  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<ThemeAssets> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) =>
      ThemeAssets(bigNavBar: bigNavBar, homeBg: homeBg);

  @override
  ThemeExtension<ThemeAssets> lerp(
    covariant ThemeExtension<ThemeAssets>? other,
    double t,
  ) {
    if (other is! ThemeAssets) {
      return this;
    }
    return ThemeAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const ThemeAssets dark = ThemeAssets(
    bigNavBar: AppAssets.appLogo,
    homeBg: AppAssets.appLogo,
  );
  static const ThemeAssets light = ThemeAssets(
    bigNavBar: AppAssets.appLogo,
    homeBg: AppAssets.appLogo,
  );
}
