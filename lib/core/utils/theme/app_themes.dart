import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme_assets.dart';
import '../../../core/utils/theme/theme_colors.dart';
import '../constants/app_colors.dart';

ThemeData darkTheme() => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppDarkColors.background,
    extensions: [ThemeColors.dark, ThemeAssets.dark]);

ThemeData lightTheme() => ThemeData(
    useMaterial3: true,
    // scaffoldBackgroundColor: AppLightColors.background,
    extensions: [ThemeColors.light, ThemeAssets.light]);
