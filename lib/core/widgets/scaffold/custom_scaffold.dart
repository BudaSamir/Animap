import 'package:animap_app/core/extensions/bloc_helper.dart';
import 'package:animap_app/core/extensions/media_query_helper.dart';
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
        backgroundColor: context.theme.scaffoldBackgroundColor,
        bottomNavigationBar: bottomNavigationBar,
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        resizeToAvoidBottomInset: false,
        body: Directionality(
          textDirection: context.settingsBloc.langCode == "en"
              ? TextDirection.ltr
              : TextDirection.rtl,
          child: SizedBox(
              width: context.width, height: context.height, child: child),
        ),
      ),
    );
  }
}
