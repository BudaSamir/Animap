// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../extensions/media_query_helper.dart';
import '../texts/custom_text.dart';

class CustomRadio extends StatelessWidget {
  Axis scrollDirection;
  final int radioCount;
  final List<String> titlesText;
  final List<Color> titlesColor;
  final List<double> titlesFontSize;
  final List values;
  final List groupValue;
  final List<Function(dynamic value)?> onChanged;
  List<Color> activeColor;
  CustomRadio({
    super.key,
    this.scrollDirection = Axis.horizontal,
    required this.radioCount,
    required this.titlesText,
    required this.titlesColor,
    required this.titlesFontSize,
    required this.values,
    required this.groupValue,
    required this.onChanged,
    required this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
        radioCount,
        (index) => SizedBox(
          width: scrollDirection == Axis.vertical
              ? context.width
              : context.width * 0.25,
          child: RadioListTile(
            contentPadding: EdgeInsets.zero,
            title: CustomText(
              text: titlesText[index],
              color: titlesColor[index],
              fontSize: titlesFontSize[index],
              textAlign: TextAlign.start,
            ),
            value: values[index],
            groupValue: groupValue[index],
            onChanged: onChanged[index],
            activeColor: activeColor[index],
          ),
        ),
      ),
    );
  }
}
