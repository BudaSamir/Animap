// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../services/cache_services/cache_service.dart';
// import '../../../services/cache_services/keys.dart';
//
// part 'theme_event..dart';
// part 'theme_state..dart';
//
// enum ThemeType { darkTheme, lightTheme }
//
// class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
//   ThemeBloc() : super(ThemeStates.darkTheme()) {
//     on<GetInitialTheme>((event, emit) {
//       switch (event.themeType) {
//         case ThemeType.lightTheme:
//           emit(ThemeStates.lightTheme());
//         case ThemeType.darkTheme:
//           emit(ThemeStates.darkTheme());
//       }
//     });
//
//     on<ToggleTheme>(
//       (event, emit) async {
//         if (state == ThemeStates.lightTheme()) {
//           await CacheService.instance
//               .setData(key: Keys.themeTypeKey, value: Keys.darkThemeValue);
//           emit(ThemeStates.darkTheme());
//         } else {
//           await CacheService.instance
//               .setData(key: Keys.themeTypeKey, value: Keys.lightThemeValue);
//           emit(ThemeStates.lightTheme());
//         }
//       },
//     );
//
//     on<GetSavedTheme>((event, emit) {
//       final savedTheme =
//           CacheService.instance.getData(key: Keys.themeTypeKey) ??
//               Keys.darkThemeValue;
//       switch (savedTheme) {
//         case Keys.darkThemeValue:
//           emit(ThemeStates.darkTheme());
//         case Keys.lightThemeValue:
//           emit(ThemeStates.lightTheme());
//       }
//     });
//   }
// }
