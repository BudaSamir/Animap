import 'package:flutter/material.dart';

import '../utils/language/languages_setup/app_localizations.dart';
import '../utils/theme/theme_assets.dart';
import '../utils/theme/theme_colors.dart';

extension SettingsHelper on BuildContext {
  /// Theme
  ThemeData get theme => Theme.of(this);

  /// Color
  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;

  /// Images
  ThemeAssets get assets => Theme.of(this).extension<ThemeAssets>()!;

  /// Styles
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  /// Language
  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }
}
