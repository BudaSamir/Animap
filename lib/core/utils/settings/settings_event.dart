part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.changeTheme() = _ChangeTheme;
  const factory SettingsEvent.changeLanguage(String langCode) = _ChangeLanguage;
}
