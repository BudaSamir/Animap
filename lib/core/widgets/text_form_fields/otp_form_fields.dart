// ignore_for_file: must_be_immutable

import 'package:animap_app/core/extensions/media_query_helper.dart';
import 'package:animap_app/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../services/validation_service.dart';
import '../../widgets/text_form_fields/text_form_field.dart';

class OtpFormFields extends StatelessWidget {
  final int fieldCount;
  List<TextEditingController?>? controllerList;
  List<FocusNode?>? focusNodeList;
  List<String? Function(String?)?>? validatorList;
  List<dynamic Function()?>? onTapList;
  List<dynamic Function(String)?>? onChangedList;
  List<dynamic Function()?>? onEditingCompleteList;
  List<dynamic Function(String)?>? onFieldSubmittedList;
  OtpFormFields({
    super.key,
    required this.fieldCount,
    this.controllerList,
    this.focusNodeList,
    this.validatorList,
    this.onTapList,
    this.onChangedList,
    this.onEditingCompleteList,
    this.onFieldSubmittedList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        fieldCount,
        (index) => Container(
          height: context.height * 0.075,
          width: context.width * 0.125,
          margin: EdgeInsets.symmetric(horizontal: context.width * 0.03),
          child: CustomTextFormField(
            controller: controllerList?[index],
            focusNode: focusNodeList?[index],
            validator: validatorList?[index],
            onTap: onTapList?[index],
            onChanged: onChangedList?[index],
            onEditingComplete: onEditingCompleteList?[index],
            onFieldSubmitted: onFieldSubmittedList?[index],
            fillColor: AppColors.white,
            textAlign: TextAlign.center,
            expands: true,
            autofocus: index == 0 ? true : false,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              FilteringTextInputFormatter.allow(
                  RegExp(ValidationService.instance.verificationCodeRegExp)),
            ],
          ),
        ),
      ),
    );
  }
}
