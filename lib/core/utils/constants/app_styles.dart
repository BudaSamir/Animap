import 'package:flutter/material.dart';

import 'app_fonts.dart';

class StylesManager {
  factory StylesManager() => _stylesManager;
  StylesManager._internal();
  static final StylesManager _stylesManager = StylesManager._internal();

  /// Created Method Return TextStyle Widget (TextStyle base)
  TextStyle _getTextStyleWidget(
      double fontSize, FontWeight? fontWeight, Color? color) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: AppFontConstants.fontFamily,
    );
  }

  /// Created Method Return Light TextStyle
  /// Used The TextStyle Base ( _getTextStyleWidget ) Method
  TextStyle getLightStyle({
    double fontSize = AppFontSizes.s12,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return _getTextStyleWidget(
        fontSize, fontWeight ?? AppFontWeights.light, color);
  }

  /// Created Method Return Regular TextStyle
  /// Used The TextStyle Base ( _getTextStyleWidget ) Method
  TextStyle getRegularStyle({
    double fontSize = AppFontSizes.s12,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return _getTextStyleWidget(
        fontSize, fontWeight ?? AppFontWeights.regular, color);
  }

  /// Created Method Return Medium TextStyle
  /// Used The TextStyle Base ( _getTextStyleWidget ) Method
  TextStyle getMediumStyle({
    double fontSize = AppFontSizes.s12,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return _getTextStyleWidget(
        fontSize, fontWeight ?? AppFontWeights.medium, color);
  }

  /// Created Method Return Semi Bold TextStyle
  /// Used The TextStyle Base ( _getTextStyleWidget ) Method
  TextStyle getSemiBoldStyle({
    double fontSize = AppFontSizes.s12,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return _getTextStyleWidget(
        fontSize, fontWeight ?? AppFontWeights.semiBold, color);
  }

  /// Created Method Return Bold TextStyle
  /// Used The TextStyle Base ( _getTextStyleWidget ) Method
  TextStyle getBoldStyle({
    double fontSize = AppFontSizes.s12,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return _getTextStyleWidget(
        fontSize, fontWeight ?? AppFontWeights.bold, color);
  }
}
