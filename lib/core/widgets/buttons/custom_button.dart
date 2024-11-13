// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  double? height;
  double? width;
  double borderRadius;
  Color? color;
  Color borderColor;
  final Widget title;

  CustomButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.borderRadius = 8,
      this.color,
      this.borderColor = Colors.transparent,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 10,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Center(child: title),
      ),
    );
  }
}
