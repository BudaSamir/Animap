import 'package:animap_app/core/extensions/bloc_helper.dart';
import 'package:animap_app/core/extensions/navigate_helper.dart';
import 'package:animap_app/core/utils/constants/app_fonts.dart';
import 'package:animap_app/core/widgets/scaffold/custom_scaffold.dart';
import 'package:animap_app/core/widgets/text_form_fields/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/services/route_services/routes_names.dart';
import '../../../../../core/services/validation_service.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/widgets/buttons/main_button.dart';
import '../../../../../core/widgets/texts/custom_rich_text.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Container(
            margin: EdgeInsets.all(5),
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.shade50,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child:
                Icon(Icons.arrow_back_ios_sharp, color: AppColors.primaryColor),
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              SizedBox(height: 30.h),

              ///======================== Title ==================================
              CustomRichText(
                length: 2,
                textAlign: TextAlign.start,
                texts: [
                  "Reset Your Password \n",
                  "Enter your email address below to receive a one-time password (OTP) for resetting your password",
                ],
                textsColors: List.filled(2, AppColors.primaryColor.shade900),
                textsFonts: [AppFontSizes.s20, AppFontSizes.s14],
                textsFontsWeights: [
                  AppFontWeights.bold,
                  AppFontWeights.regular
                ],
              ),

              ///======================== Email ==================================
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h),
                child: Form(
                  key: context.forgetPassword.resetPasswordFormKey,
                  child: CustomTextFormField(
                    width: 10.w,
                    maxLines: 1,
                    hintText: "Email or Phone Number",
                    fillColor: AppColors.white,
                    controller: context.forgetPassword.emailController,
                    focusNode: context.forgetPassword.emailFocusNode,
                    validator: (email) =>
                        ValidationService.instance.validateEmail(email),
                    // onChanged: (email) => context.forgetPassword.add(
                    //     ForgetPasswordEvent.formFieldFilling(fieldText: email)),
                  ),
                ),
              ),

              ///
              ///======================== Login Button ===========================
              ///
              MainButton(
                width: double.infinity.w,
                height: 45.h,
                // onTap: context.forgetPassword.formFilled
                //     ? () => context.forgetPassword.add
                //     : null,
                onTap: () => context.pushNamed(RoutesNames.otp),
                text: "Send OTP",
                fontWeight: AppFontWeights.semiBold,
                // color: context.forgetPassword.formFilled
                //     ? AppColors.primaryColor
                //     : AppColors.grey600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
