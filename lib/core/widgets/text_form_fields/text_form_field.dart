// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import '/core/extensions/settings_helper.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  TextEditingController? controller;

  FocusNode? focusNode;

  Function()? onTap;

  Function(String)? onChanged;

  Function(String?)? onSaved;

  Function()? onEditingComplete;

  Function(String)? onFieldSubmitted;

  String? Function(String?)? validator;

  String? hintText;

  double? hintTextFontSize;

  bool autofocus;

  bool? obscureText;

  TextInputAction? textInputAction;

  TextInputType? keyboardType;

  Color? cursorColor;

  Color? fillColor;

  Widget? prefixIcon;

  Widget? suffixIcon;

  double? width;

  double? height;

  int? maxLines;

  bool readOnly = false;

  bool? enabled;

  bool? enableInteractiveSelection;

  TextStyle? hintStyle;

  TextStyle? errorStyle;

  InputBorder? border;

  InputBorder? enabledBorder;

  InputBorder? focusedBorder;

  InputBorder? errorBorder;

  InputBorder? focusedErrorBorder;

  InputBorder? disabledBorder;

  CustomTextFormField({
    super.key,
    this.controller,
    this.focusNode,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.autofocus = false,
    this.textInputAction,
    this.keyboardType,
    this.cursorColor,
    this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.hintTextFontSize,
    this.fillColor,
    this.height,
    this.width,
    this.maxLines,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
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
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      onTap: widget.onTap,
      maxLines: widget.maxLines,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      autofocus: widget.autofocus,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      cursorColor: widget.cursorColor ?? context.color.primaryColor,
      obscureText: widget.obscureText ?? false,
      obscuringCharacter: '*',
      style: TextStyle(
          color: Colors.blueAccent,
          fontSize: AppFontSizes.s16,
          fontWeight: AppFontWeights.light),
      decoration: InputDecoration(
        fillColor: _isFocused ? AppColors.white : widget.fillColor,
        filled: true,
        isDense: false,
        labelText: widget.hintText,
        labelStyle: TextStyle(
            color: _isFocused ? context.color.primaryColor : AppColors.grey600,
            fontSize: widget.hintTextFontSize ?? AppFontSizes.s12,
            fontWeight: AppFontWeights.medium),
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
          horizontal: widget.width ?? 0.0,
          vertical: widget.height ?? 0.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppFontSizes.s14),
          borderSide: BorderSide(
              color: _isFocused ? Colors.blueAccent : Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppFontSizes.s14),
          borderSide: BorderSide(
              color: _isFocused ? Colors.blueAccent : Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppFontSizes.s14),
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppFontSizes.s14),
          borderSide: const BorderSide(color: Colors.red),
        ),
        disabledBorder: widget.disabledBorder,
      ),
    );
  }
}
