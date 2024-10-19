import 'package:flutter/material.dart';

import '/core/extensions/settings_helper.dart';

class CustomScaffold extends StatelessWidget {
  CustomScaffold({
    required this.child,
    super.key,
    this.appBar,
    this.bottomNavigationBar,
    this.backgroundColor,
    this.floatingActionButton,
  });
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  FloatingActionButton? floatingActionButton;
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.color.background,
        bottomNavigationBar: bottomNavigationBar,
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: child,
        ),
      ),
    );
  }
}
