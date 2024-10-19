import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localizations_delegate.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  /// Static method to retrieve the AppLocalizations instance from the nearest BuildContext.
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// Static constant that holds the delegate for this localization.
  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  /// Loading The Translate Files And Reformat it For Use
  late Map<String, String>
      _localizedStrings; // Map to store the localized strings.

  /// Method to load the localized strings from JSON files.
  /// Loading The Translate Files And Reformat it For Use
  Future<void> load() async {
    /// Loading translate Files
    final jsonString =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');

    /// Decoding The Translate File Form String To Map
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    /// Converting The Default ( Map<String, dynamic> ) To ( Map<String, String> )
    _localizedStrings = jsonMap
        .map<String, String>((key, value) => MapEntry(key, value.toString()));
  }

  /// Finding The Translation For The Specific Text
  /// Method to translate a given key into the corresponding localized string.
  String? translate(String key) => _localizedStrings[key];

  // Getter method to check if the current locale is English.
  bool get isEnLocale => locale.languageCode == 'en';
}
