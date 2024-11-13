import 'package:flutter/material.dart';

import '../services/route_services/navigation_service.dart';

extension NavigateHelper on BuildContext {
  Future<void> push(Widget screen) => NavigationService.instance
      .push(MaterialPageRoute(builder: (context) => screen));

  Future<void> pushReplacement(Widget screen) => NavigationService.instance
      .pushReplacement(MaterialPageRoute(builder: (context) => screen));

  Future<void> pushNamed(String screen) =>
      NavigationService.instance.pushNamed(screen);

  Future<void> pushReplacementNamed(String screen) =>
      NavigationService.instance.pushReplacementNamed(screen);

  void popUntil() => NavigationService.instance.popUntil();

  void pop() => NavigationService.instance.pop();
}
