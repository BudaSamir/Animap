import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../services/cache_services/cache_service.dart';
import '../../services/cache_services/keys.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  static SettingsBloc get(context) => BlocProvider.of(context);

  late bool isDark;
  late String langCode;

  SettingsBloc() : super(const SettingsState.initial()) {
    isDark = CacheService.instance.getData(key: Keys.appThemeKey) ?? false;
    langCode = CacheService.instance.getCacheLanguageCode() ?? "en";
    on<SettingsEvent>((event, emit) {
      event.when(
        ///=========================== Theme Setting ===========================
        changeTheme: () async {
          isDark = !isDark;
          emit(SettingsState.themeChanged(isDark: isDark));
          await CacheService.instance
              .setData(key: Keys.appThemeKey, value: isDark);
        },

        ///======================== Language Setting ===========================
        changeLanguage: (code) async {
          langCode = code;
          emit(SettingsState.languageChanged(langCode: langCode));
          await CacheService.instance.setCacheLanguageCode(langCode);
        },
      );
    });
  }
}
