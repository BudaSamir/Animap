import 'package:animap_app/core/extensions/navigate_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/services/route_services/routes_names.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_fonts.dart';
import '../../../../../core/widgets/buttons/main_button.dart';
import '../../../../../core/widgets/scaffold/custom_scaffold.dart';
import '../../../../../core/widgets/texts/custom_rich_text.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        /// ======================== Get Started Logo ==========================
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(
              AppAssets.appLogo,
              height: 48.h,
              width: 48.w,
            ),
          ),
        ),

        ///======================= Get Started Image ===========================
        SizedBox(height: 80.h),
        SvgPicture.asset(AppAssets.getStarted),

        /// ======================== Get Started Text ==========================
        SizedBox(height: 40.h),
        CustomRichText(
          length: 3,
          textAlign: TextAlign.center,
          texts: [
            "Join\t",
            "Animap\t",
            "today to help stray animals and connect with local services near you",
          ],
          textsColors: [AppColors.black, AppColors.red, AppColors.black],
          textsFonts: List.filled(3, AppFontSizes.s12.sp),
          textsFontsWeights: List.filled(3, AppFontWeights.semiBold),
        ),

        ///===================== Get Started Buttons ===========================
        SizedBox(height: 40.h),
        MainButton(
          width: 360.w,
          height: 45.h,
          onTap: () => context.pushNamed(RoutesNames.login),
          text: "Log in",
          fontWeight: AppFontWeights.semiBold,
        ),
        SizedBox(height: 20.h),
        MainButton(
          width: 360.w,
          height: 45.h,
          onTap: () => context.pushNamed(RoutesNames.chooseRole),
          text: "Sign Up",
          color: AppColors.grey100,
          titleColor: AppColors.primaryColor,
          fontWeight: AppFontWeights.semiBold,
          fontSize: AppFontSizes.s14.sp,
        ),
      ],
    ));
  }
}
