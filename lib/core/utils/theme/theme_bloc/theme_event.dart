part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme() = _ChangeTheme;
  const factory ThemeEvent.loadTheme() = _LoadTheme;
}
