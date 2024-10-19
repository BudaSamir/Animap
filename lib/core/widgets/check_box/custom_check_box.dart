// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../extensions/media_query_helper.dart';
import '../texts/custom_text.dart';

class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    required this.height,
    required this.width,
    super.key,
    this.value,
    this.onTap,
    this.color,
    this.text,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });
  final double width;
  final double height;
  bool? value;
  Color? color;
  String? text;
  Color? textColor;
  double? fontSize;
  FontWeight? fontWeight;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: width,
            height: height,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(5)),
              child: value!
                  ? const Icon(
                      Icons.check,
                      size: 22.5,
                      color: Colors.blueAccent,
                    )
                  : null,
            ),
          ),
        ),
        SizedBox(width: context.width * 0.025),
        CustomText(
          text: text ?? '',
          color: textColor,
          fontSize: fontSize!,
          fontWeight: fontWeight,
        )
      ],
    );
  }
}
