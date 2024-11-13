import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme_assets.dart';
import '../../../core/utils/theme/theme_colors.dart';
import '../constants/app_colors.dart';

ThemeData darkTheme() => ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppDarkColors.background,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: AppLightColors.background),
    appBarTheme: AppBarTheme(
      backgroundColor: AppLightColors.background,
      elevation: 0,
    ),
    extensions: [ThemeColors.dark, ThemeAssets.dark]);

ThemeData lightTheme() => ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppLightColors.background,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: AppLightColors.background),
    appBarTheme: AppBarTheme(
      backgroundColor: AppLightColors.background,
      elevation: 0,
    ),
    extensions: [ThemeColors.light, ThemeAssets.light]);
