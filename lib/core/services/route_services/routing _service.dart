import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/services/route_services/routes_names.dart';
import '../../widgets/no_connections.dart';

class RoutingService {
  static const initialRouteName = RoutesNames.login;
  static final _routeNameNotifier = ValueNotifier<String>(initialRouteName);
  static ValueNotifier<String> get routeNameNotifier => _routeNameNotifier;
  static String get routeName => _routeNameNotifier.value;

  static void onRouteChanged(String? routeName) {
    _routeNameNotifier.value = routeName ?? 'Error';
    log(_routeNameNotifier.value, name: 'Route');
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      ///================================= Home ================================
      // case RoutesNames.home:
      //   return AppPageRoute(
      //       settings: settings,
      //       builder: (_) => BlocProvider(
      //             create: (context) => HomeBloc(),
      //             child: const HomeScreen(),
      //           ));

      case RoutesNames.noConnections:
        return AppPageRoute(
          settings: settings,
          builder: (_) => const NoConnections(),
        );

      default:
        return unDefinedRoute(settings);
    }
  }

  static Route<dynamic> unDefinedRoute(RouteSettings settings) {
    return AppPageRoute(
      settings: settings,
      builder: (_) => const Scaffold(
        body: Center(child: Text('No Route Found')),
      ),
    );
  }
}

class AppPageRoute extends CupertinoPageRoute<dynamic> {
  AppPageRoute({
    required Widget Function(BuildContext) builder,
    super.settings,
  }) : super(builder: (context) => builder(context));
}

class BaseRoute extends PageRouteBuilder<dynamic> {
  BaseRoute({required this.page})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              Stack(children: [page]),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget widget) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
                parent: animation, curve: Curves.linearToEaseOut);

            return ScaleTransition(
              scale: tween.animate(curvedAnimation),
              child: widget,
            );
          },
        );
  Widget page;
}
