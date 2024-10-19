// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '/core/extensions/settings_helper.dart';
import '../../extensions/media_query_helper.dart';
import '../../widgets/text_form_fields/text_form_field.dart';
import '../texts/custom_text.dart';

class TextFormFields extends StatelessWidget {
  bool title;
  final int fieldCount;
  final Axis scrollDirection;
  List<String>? titleText;
  List<String>? hintTexts;
  List<Color>? titleColor;
  List<double>? titleFontSize;
  List<FontWeight>? titleFontWeight;
  List<TextEditingController?>? controllerList;
  List<FocusNode?>? focusNodeList;
  List<bool>? obscureTextList;
  List<String? Function(String?)?>? validatorList;
  List<dynamic Function()?>? onTapList;
  List<dynamic Function(String)?>? onChangedList;
  List<dynamic Function()?>? onEditingCompleteList;
  List<dynamic Function(String)?>? onFieldSubmittedList;
  List<Widget?>? prefixIcon;
  List<Widget?>? suffixIcon;
  double spaceBetweenFields;
  List<double>? heights;
  List<double>? widths;
  List<int?>? maxLines;
  TextFormFields(
      {super.key,
      required this.title,
      required this.fieldCount,
      this.titleText,
      this.hintTexts,
      this.titleColor,
      this.titleFontSize,
      this.titleFontWeight,
      this.controllerList,
      this.focusNodeList,
      this.validatorList,
      this.onTapList,
      this.onChangedList,
      this.onEditingCompleteList,
      this.onFieldSubmittedList,
      this.obscureTextList,
      this.prefixIcon,
      this.suffixIcon,
      this.scrollDirection = Axis.vertical,
      this.spaceBetweenFields = 0.0,
      this.widths,
      this.heights,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        fieldCount,
        (index) => Padding(
          padding: EdgeInsets.symmetric(vertical: context.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ================= Text Form Field Title ==============
              if (title)
                CustomText(
                  text: titleText![index],
                  color: titleColor![index],
                  fontSize: titleFontSize![index],
                  fontWeight: titleFontWeight![index],
                ),

              /// ================= Text Form Field ====================
              CustomTextFormField(
                width: widths?[index],
                height: heights?[index],
                controller: controllerList?[index],
                focusNode: focusNodeList?[index],
                validator: validatorList?[index],
                onTap: onTapList?[index],
                onChanged: onChangedList?[index],
                onEditingComplete: onEditingCompleteList?[index],
                onFieldSubmitted: onFieldSubmittedList?[index],
                fillColor: context.color.background,
                hintText: titleText?[index],
                prefixIcon: prefixIcon?[index],
                suffixIcon: suffixIcon?[index],
                obscureText: obscureTextList?[index],
                maxLines: maxLines?[index],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
