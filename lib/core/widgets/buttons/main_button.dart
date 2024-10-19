// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import '/core/extensions/settings_helper.dart';
import '../../extensions/media_query_helper.dart';
import '../../utils/constants/app_fonts.dart';
import '../texts/custom_text.dart';
import 'custom_button.dart';

class MainButton extends StatelessWidget {
  MainButton({
    required this.onTap,
    required this.text,
    super.key,
    this.height,
    this.width,
    this.color,
    this.titleColor = Colors.white,
    this.fontSize = AppFontSizes.s14,
    this.fontWeight = AppFontWeights.regular,
    this.alignment = Alignment.center,
  });
  final void Function()? onTap;
  final String text;
  Color? color;
  double? width;
  double? height;
  double fontSize;
  FontWeight? fontWeight;
  Color titleColor;
  AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        width: width ?? context.width,
        height: height ?? context.height * 0.06,
        child: CustomButton(
          color: color ?? context.color.primaryColor,
          onTap: onTap,
          title: CustomText(
            text: text,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: titleColor,
          ),
        ),
      ),
    );
  }
}
