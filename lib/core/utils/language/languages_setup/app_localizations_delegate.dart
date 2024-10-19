import 'package:flutter/material.dart'
    show BuildContext, Locale, LocalizationsDelegate;

import 'app_localizations.dart';

/// Defining a custom LocalizationsDelegate for AppLocalizations.
class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  /// Override method to check if a given locale is supported by the app.
  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  /// Override method to load the AppLocalizations for a given locale.
  @override
  Future<AppLocalizations> load(Locale locale) async {
    final AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  /// Override method to determine whether the localization should be reloaded.
  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}

x() {}

extension TranslateX on String {
  String tr(BuildContext context) =>
      AppLocalizations.of(context)!.translate(this) ?? "";
}
