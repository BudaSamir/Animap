// ignore_for_file: must_be_immutable
import 'package:animap_app/core/extensions/settings_helper.dart';
import 'package:animap_app/core/utils/constants/app_assets.dart';
import 'package:animap_app/core/utils/constants/app_fonts.dart';
import 'package:animap_app/core/widgets/texts/custom_text.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_colors.dart';

class PasswordFormField extends StatefulWidget {
  TextEditingController? controller;

  FancyPasswordController? passwordController;

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

  bool expands;

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

  PasswordFormField({
    super.key,
    this.controller,
    this.passwordController,
    this.focusNode,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.validator,
    this.autofocus = false,
    this.expands = false,
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
    this.inputFormatters,
    this.textAlign = TextAlign.start,
  });

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  Set<ValidationRule> validationRules = {
    DigitValidationRule(),
    UppercaseValidationRule(),
    LowercaseValidationRule(),
    SpecialCharacterValidationRule(),
    MinCharactersValidationRule(6),
    MaxCharactersValidationRule(12),
  };
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
    return FancyPasswordField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      validationRules: validationRules,
      hasStrengthIndicator: false,
      validator: widget.validator,
      obscureText: widget.obscureText,
      onSaved: widget.onSaved,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      inputFormatters: widget.inputFormatters,
      textAlign: widget.textAlign,
      passwordController: widget.passwordController,
      validationRuleBuilder: (rules, value) => validationRuleBuilder(
          rules: rules, value: value, isFocus: _isFocused),
      style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: AppFontSizes.s16,
          fontWeight: AppFontWeights.regular),
      decoration: InputDecoration(
        // fillColor: _isFocused ? context.color.background : widget.fillColor,
        fillColor: widget.fillColor,
        filled: true,
        isDense: false,
        labelText: widget.hintText,
        labelStyle: TextStyle(
          color: _isFocused ? context.color.primaryColor : AppColors.grey600,
          fontSize: widget.hintTextFontSize ?? AppFontSizes.s14,
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

  Widget validationRuleBuilder(
      {required Set<ValidationRule> rules,
      required String value,
      required bool isFocus}) {
    if (value.isEmpty || !isFocus) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: rules
            .map(
              (rule) => rule.validate(value)
                  ? rightValidation(rule.name)
                  : wrongValidation(rule.name),
            )
            .toList(),
      ),
    );
  }

  Widget rightValidation(String text) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(AppAssets.valid),
          ),
          CustomText(
            text: text,
            color: Colors.green,
            fontSize: AppFontSizes.s10,
            fontWeight: AppFontWeights.bold,
            letterSpacing: 1,
          ),
        ],
      );

  Widget wrongValidation(String text) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset(AppAssets.error),
          ),
          CustomText(
            text: text,
            color: Colors.red,
            fontSize: AppFontSizes.s10,
            fontWeight: AppFontWeights.medium,
            letterSpacing: 1,
          ),
        ],
      );
}
