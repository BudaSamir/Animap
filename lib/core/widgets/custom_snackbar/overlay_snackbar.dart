import 'package:flutter/cupertino.dart';

import '/core/widgets/custom_snackbar/snackbar_content_type.dart';
import 'custom_snackbar.dart';

class OverlaySnackBar {
  OverlaySnackBar._();
  static final OverlaySnackBar instance = OverlaySnackBar._();

  OverlayState? _overlay;
  OverlayEntry? _overlayEntry;

  buildSnackbar({
    required BuildContext context,
    required String title,
    required String message,
    required SnackbarContentType contentType,
    double? top,
    double? right,
    double? left,
    double? bottom,
    int? seconds,
    int? milliseconds,
  }) {
    _overlay ??= Overlay.of(context);
    _overlayEntry ??= OverlayEntry(
      builder: (context) => Positioned(
        top: top,
        right: right,
        left: left,
        bottom: bottom,
        child: CustomSnackbar(
          title: title,
          message: message,
          contentType: contentType,
          onPressed: () => _overlayEntry?.remove(),
        ),
      ),
    );

    _showSnackBar();
    if (seconds != null || milliseconds != null) {
      _hideSnackBar(seconds, milliseconds);
    }
  }

  _showSnackBar() {
    if (_overlayEntry != null) {
      _overlay?.insert(_overlayEntry!);
    }
  }

  _hideSnackBar(int? seconds, int? milliseconds) {
    Future.delayed(
        Duration(
          seconds: seconds ?? 0,
          milliseconds: milliseconds ?? 0,
        ), () {
      _overlayEntry?.remove();
    });
  }
}
