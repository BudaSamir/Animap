import 'dart:async';

import 'package:get_it/get_it.dart';

import '../utils/theme/theme_bloc/theme_bloc.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  sl.registerFactory(ThemeBloc.new);
}
