// ignore_for_file: must_be_immutable

import 'package:animap_app/core/utils/constants/app_colors.dart';
import 'package:animap_app/core/widgets/text_form_fields/phone_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../extensions/media_query_helper.dart';
import '../../widgets/text_form_fields/text_form_field.dart';
import '../texts/custom_text.dart';

class TextFormFields extends StatelessWidget {
  bool title;
  bool phone;
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
  Function(PhoneNumber)? onChangedPhoneNumber;
  List<Widget?>? prefixIcon;
  List<Widget?>? suffixIcon;
  double spaceBetweenFields;
  List<double>? heights;
  List<double>? widths;
  List<int?>? maxLines;
  TextFormFields(
      {super.key,
      required this.title,
      required this.phone,
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
      this.onChangedPhoneNumber,
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
              if (phone && index != fieldCount - 1)
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
                  fillColor: AppColors.white,
                  hintText: hintTexts?[index],
                  prefixIcon: prefixIcon?[index],
                  suffixIcon: suffixIcon?[index],
                  obscureText: obscureTextList?[index],
                  maxLines: maxLines?[index],
                ),

              /// ================= Phone Form Field ====================
              if (phone && index == fieldCount - 1)
                PhoneFormField(
                  width: widths?[index],
                  height: heights?[index],
                  controller: controllerList?[index],
                  focusNode: focusNodeList?[index],
                  validator: validatorList?[index],
                  onChanged: onChangedPhoneNumber,
                  onEditingComplete: onEditingCompleteList?[index],
                  onFieldSubmitted: onFieldSubmittedList?[index],
                  fillColor: AppColors.white,
                  hintText: hintTexts?[index],
                  prefixIcon: prefixIcon?[index],
                  suffixIcon: suffixIcon?[index],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
