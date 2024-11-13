// ignore_for_file: must_be_immutable
import 'package:animap_app/core/extensions/bloc_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '/core/extensions/settings_helper.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_fonts.dart';

class PhoneFormField extends StatefulWidget {
  TextEditingController? controller;

  FocusNode? focusNode;

  Function()? onTap;

  Function(PhoneNumber)? onChanged;

  Function(PhoneNumber?)? onSaved;

  Function()? onEditingComplete;

  Function(String)? onFieldSubmitted;

  String? Function(String?)? validator;

  String? hintText;

  double? hintTextFontSize;

  TextInputAction? textInputAction;

  Color? cursorColor;

  Color? fillColor;

  Widget? prefixIcon;

  Widget? suffixIcon;

  double? width;

  double? height;

  bool? enabled;

  bool? enableInteractiveSelection;

  TextStyle? hintStyle;

  TextStyle? errorStyle;

  TextAlign textAlign;

  InputBorder? border;

  InputBorder? enabledBorder;

  InputBorder? focusedBorder;

  InputBorder? errorBorder;

  InputBorder? focusedErrorBorder;

  InputBorder? disabledBorder;

  List<TextInputFormatter>? inputFormatters;

  PhoneFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.textInputAction,
    this.cursorColor,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.hintTextFontSize,
    this.fillColor,
    this.height,
    this.width,
    this.textAlign = TextAlign.start,
  });

  @override
  State<PhoneFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<PhoneFormField> {
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode?.addListener(onFocusChange);
  }

  onFocusChange() {
    if (mounted) {
      setState(() {
        _isFocused = widget.focusNode!.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.circular(8);
    return InternationalPhoneNumberInput(
      initialValue: PhoneNumber(isoCode: 'EG'),
      textFieldController: widget.controller,
      focusNode: widget.focusNode,
      onInputChanged: widget.onChanged,
      textAlign: widget.textAlign,
      onSaved: widget.onSaved,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      cursorColor: widget.cursorColor ?? context.color.primaryColor,
      formatInput: true,
      textStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: AppFontSizes.s16,
          fontWeight: AppFontWeights.regular),
      keyboardType:
          TextInputType.numberWithOptions(signed: true, decimal: true),
      selectorConfig: SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        useBottomSheetSafeArea: true,
      ),
      searchBoxDecoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: true,
        isDense: false,
        hintText: "Search By Country Name Or Dial Code",
        hintStyle: TextStyle(
          color: AppColors.grey600,
          fontSize: AppFontSizes.s14,
          fontWeight: AppFontWeights.medium,
        ),
        suffixIcon: widget.suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorStyle: widget.errorStyle,
        border: widget.border,
        contentPadding: EdgeInsets.symmetric(
          horizontal: widget.width ?? 1.0,
          vertical: widget.height ?? 0.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: Colors.red),
        ),
        disabledBorder: widget.disabledBorder,
      ),
      locale: context.settingsBloc.langCode,
      inputDecoration: InputDecoration(
        // fillColor: _isFocused ? context.color.background : widget.fillColor,
        fillColor: widget.fillColor,
        filled: true,
        isDense: false,
        labelText: widget.hintText,
        labelStyle: TextStyle(
          color: _isFocused ? context.color.primaryColor : AppColors.grey600,
          fontSize: widget.hintTextFontSize ?? AppFontSizes.s12,
          fontWeight: AppFontWeights.medium,
        ),
        // hintText: !_isFocused ? widget.hintText : "",
        // hintStyle: MethodsManager.selectTextStyle(
        //   color: AppColors.grey600,
        //   fontSize: AppFontSizes.s14,
        //   styles: TextStyles.regular,
        // ),
        prefixIcon: !_isFocused ? widget.prefixIcon : null,
        suffixIcon: widget.suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        errorStyle: widget.errorStyle,
        border: widget.border,
        contentPadding: EdgeInsets.symmetric(
          horizontal: widget.width ?? 1.0,
          vertical: widget.height ?? 0.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
              color: _isFocused ? AppColors.primaryColor : Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
              color: _isFocused ? AppColors.primaryColor : Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: Colors.red),
        ),
        disabledBorder: widget.disabledBorder,
      ),
    );
  }
}
