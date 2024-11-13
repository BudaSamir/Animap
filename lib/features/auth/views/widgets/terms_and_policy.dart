import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_fonts.dart';
import '../../../../core/widgets/texts/custom_rich_text.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRichText(
      length: 4,
      texts: [
        "By continuing, you agree to our \t",
        "Terms of Service \t",
        "and \t",
        "Privacy Policy",
      ],
      textsColors: [
        AppColors.black,
        AppColors.red,
        AppColors.black,
        AppColors.red
      ],
      textsFonts: List.filled(4, AppFontSizes.s9.sp),
      textsFontsWeights: List.filled(4, AppFontWeights.bold),
    );
  }
}
