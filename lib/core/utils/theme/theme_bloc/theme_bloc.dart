import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../services/cache_services/cache_service.dart';
import '../../../services/cache_services/keys.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  static ThemeBloc get(context) => BlocProvider.of(context);
  bool isDark = false;

  ThemeBloc() : super(const ThemeState.initial()) {
    on<ThemeEvent>((event, emit) {
      event.when(
        changeTheme: () async {
          isDark = !isDark!;
          emit(ThemeState.setTheme(isDark: isDark!));
          await CacheService.instance
              .setData(key: Keys.appThemeKey, value: isDark);
        },
        loadTheme: () async {
          isDark = await CacheService.instance.getData(key: Keys.appThemeKey) ??
              false;
        },
      );
    });
  }
}
