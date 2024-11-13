import 'package:flutter/material.dart';

import '../../../core/services/route_services/routing%20_service.dart';

class NavigationService {
  NavigationService._();
  static final NavigationService instance = NavigationService._();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<T?> push<T extends Object?>(Route<T> route) {
    RoutingService.onRouteChanged(route.settings.name);
    return navigatorKey.currentState!.push(route);
  }

  Future<T?> pushReplacement<T extends Object?>(Route<T> route) {
    RoutingService.onRouteChanged(route.settings.name);
    return navigatorKey.currentState!.pushReplacement(route);
  }

  Future<T?> pushReplacementNamed<T extends Object?>(String routeName) {
    RoutingService.onRouteChanged(routeName);
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  Future<T?> pushNamed<T extends Object?>(String routeName) {
    RoutingService.onRouteChanged(routeName);
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void popUntil<T extends Object?>([T? result]) {
    var predicate = false;
    return navigatorKey.currentState!.popUntil((route) {
      RoutingService.onRouteChanged(route.settings.name);
      final value = predicate;
      predicate = true;
      return value;
    });
  }

  void pop<T extends Object?>([T? result]) {
    return navigatorKey.currentState!.pop<T>(result);
  }

  Future<dynamic> navigateAndFinish(String routeName) {
    RoutingService.onRouteChanged(routeName);
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }
}
