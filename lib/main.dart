import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/services/cache_services/cache_service.dart';
import 'core/services/cache_services/storage_service.dart';
import 'core/services/network_services/dio_service.dart';
import 'core/utils/settings/settings_bloc.dart';

Future<void> mainCommon() async {
  ///===================== System Chrome Setups ================================
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  ///===================== Data Base initialization ============================
  // await FireBaseService.instance.init();
  await CacheService.instance.init();
  StorageService.instance.init();
  DioService.instance.init();

  ///=============== Dependency Injection initialization =======================
  // await setupInjector();

  ///============================ Run App ======================================
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => SettingsBloc()),
  ], child: const App()));
}
