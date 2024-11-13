import 'package:animap_app/core/utils/constants/app_colors.dart';
import 'package:animap_app/core/utils/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/widgets/texts/custom_text.dart';

class RoleTypeCard extends StatelessWidget {
  final String image;
  final String title;
  final Function()? onTap;
  const RoleTypeCard(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 173,
        height: 200,
        decoration: ShapeDecoration(
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3FE0E0E0),
              blurRadius: 10,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            SizedBox(height: 10.h),
            CustomText(
              text: title,
              color: AppColors.primaryColor.shade900,
              fontSize: AppFontSizes.s14,
              fontWeight: AppFontWeights.semiBold,
            ),
          ],
        ),
      ),
    );
  }
}
