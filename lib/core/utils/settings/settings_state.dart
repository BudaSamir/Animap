part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.themeChanged({required bool isDark}) =
      _ThemeChanged;
  const factory SettingsState.languageChanged({required String langCode}) =
      _LanguageChanged;
}
