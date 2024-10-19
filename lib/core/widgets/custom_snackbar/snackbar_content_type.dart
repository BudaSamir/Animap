import 'package:flutter/cupertino.dart';

import './snackbar_colors.dart';

/// to handle failure, success, help and warning `ContentType` class is being used
class SnackbarContentType {
  /// message is `required` parameter
  final String message;

  /// color is optional, if provided null then `DefaultColors` will be used
  final Color? color;

  const SnackbarContentType(this.message, [this.color]);

  static const SnackbarContentType help =
      SnackbarContentType('help', SnackbarColors.helpBlue);
  static const SnackbarContentType failure =
      SnackbarContentType('failure', SnackbarColors.failureRed);
  static const SnackbarContentType success =
      SnackbarContentType('success', SnackbarColors.successGreen);
  static const SnackbarContentType warning =
      SnackbarContentType('warning', SnackbarColors.warningYellow);
}
