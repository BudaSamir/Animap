import 'package:flutter/material.dart';

extension MediaQueryHelper on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;

  double get aspectRatio => MediaQuery.sizeOf(this).aspectRatio;

  double get paddingTop => MediaQuery.paddingOf(this).top;

  double get paddingBottom => MediaQuery.paddingOf(this).bottom;

  double get paddingLeft => MediaQuery.paddingOf(this).left;

  double get paddingRight => MediaQuery.paddingOf(this).right;

  double get viewInsetsBottom => MediaQuery.viewInsetsOf(this).bottom;

  double get viewInsetsTop => MediaQuery.viewInsetsOf(this).top;

  double get viewInsetsLeft => MediaQuery.viewInsetsOf(this).left;

  double get viewInsetsRight => MediaQuery.viewInsetsOf(this).right;
}
