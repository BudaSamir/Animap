import 'package:animap_app/core/utils/language/languages_setup/app_localizations_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/extensions/bloc_helper.dart';
import '../core/utils/settings/settings_bloc.dart';
import 'core/services/connectivity_service.dart';
import 'core/services/route_services/routing _service.dart';
import 'core/utils/language/languages_setup/app_localizations_setup.dart';
import 'core/utils/theme/app_themes.dart';
import 'core/widgets/scaffold/custom_scaffold.dart';
import 'flavor_config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityService.instance.isConnected,
      builder: (_, value, __) => ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          child: AppSettings(
            value: value,
          )),
    );
  }
}

class AppSettings extends StatelessWidget {
  final bool value;

  const AppSettings({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return MaterialApp(
          builder: (context, child) => GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Builder(
              builder: (context) {
                ConnectivityService.instance.init();
                return child!;
              },
            ),
          ),
          debugShowCheckedModeBanner: !FlavorConfig.instance.isProduction(),

          ///======================== Theme Settings ===========================
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode:
              context.settingsBloc.isDark ? ThemeMode.dark : ThemeMode.light,

          ///======================== Language Settings ========================
          locale: Locale(context.settingsBloc.langCode),
          supportedLocales: AppLocalizationsSetup.supportedLocales,
          localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
          localeResolutionCallback:
              AppLocalizationsSetup.localeResolutionCallback,

          ///======================== Routing Settings =========================
          onGenerateRoute: RoutingService.onGenerateRoute,
          // initialRoute: value ? RoutesNames.home : RoutesNames.home,
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(FlavorConfig.instance.envType.toString()),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Hello There !'.tr(context),
            ),
            Text(
              'This Text for Testing The Translate'.tr(context),
            ),
            GestureDetector(
              onTap: () =>
                  context.settingsBloc.add(const SettingsEvent.changeTheme()),
              child: const Text(
                'Change Teme',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            BlocBuilder<SettingsBloc, SettingsState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                return DropdownButton<String>(
                  value: context.settingsBloc.langCode,
                  items: ['ar', 'en']
                      .map((e) =>
                          DropdownMenuItem<String>(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (langCode) {
                    if (langCode != null) {
                      context.settingsBloc
                          .add(SettingsEvent.changeLanguage(langCode));
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
