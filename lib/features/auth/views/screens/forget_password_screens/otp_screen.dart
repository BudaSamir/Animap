import 'package:animap_app/core/extensions/bloc_helper.dart';
import 'package:animap_app/core/extensions/datatype_helper.dart';
import 'package:animap_app/core/extensions/navigate_helper.dart';
import 'package:animap_app/core/widgets/scaffold/custom_scaffold.dart';
import 'package:animap_app/features/auth/controllers/forget_password_controller/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/services/route_services/routes_names.dart';
import '../../../../../core/services/validation_service.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_fonts.dart';
import '../../../../../core/widgets/buttons/main_button.dart';
import '../../../../../core/widgets/text_form_fields/otp_form_fields.dart';
import '../../../../../core/widgets/texts/custom_rich_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
      builder: (context, state) {
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
                child: Icon(Icons.arrow_back_ios_sharp,
                    color: AppColors.primaryColor),
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h),

                  ///======================== Title ==================================
                  CustomRichText(
                    length: 2,
                    texts: [
                      "Enter Verification Code \n",
                      "We've sent a verification code to your email. Please enter the code below to reset your password",
                    ],
                    textsColors:
                        List.filled(2, AppColors.primaryColor.shade900),
                    textsFonts: [AppFontSizes.s20, AppFontSizes.s14],
                    textsFontsWeights: [
                      AppFontWeights.bold,
                      AppFontWeights.regular
                    ],
                  ),
                  SizedBox(height: 30.h),

                  ///======================== Email ==================================
                  Form(
                    key: context.forgetPassword.verificationCodeFormKey,
                    child: OtpFormFields(
                      fieldCount: 4,
                      controllerList: [
                        context.forgetPassword.codeOneController,
                        context.forgetPassword.codeTwoController,
                        context.forgetPassword.codeThreeController,
                        context.forgetPassword.codeFourController,
                      ],
                      focusNodeList: [
                        context.forgetPassword.codeOneFocusNode,
                        context.forgetPassword.codeTwoFocusNode,
                        context.forgetPassword.codeThreeFocusNode,
                        context.forgetPassword.codeFourFocusNode,
                      ],
                      validatorList: List.filled(
                          4,
                          (code) =>
                              ValidationService.instance.validateOTP(code)),
                      onChangedList: [
                        (codeOne) {
                          context.forgetPassword.add(
                              ForgetPasswordEvent.formFieldFilling(
                                  fieldText: codeOne,
                                  fieldType: OTPFieldType.codeOne));
                          if (codeOne.isNotNullAndNotEmpty) {
                            FocusScope.of(context).requestFocus(
                                context.forgetPassword.codeTwoFocusNode);
                          }
                        },
                        (codeTwo) {
                          context.forgetPassword.add(
                              ForgetPasswordEvent.formFieldFilling(
                                  fieldText: codeTwo,
                                  fieldType: OTPFieldType.codeTwo));
                          if (codeTwo.isNotNullAndNotEmpty) {
                            FocusScope.of(context).requestFocus(
                                context.forgetPassword.codeThreeFocusNode);
                          }
                        },
                        (codeThree) {
                          context.forgetPassword.add(
                              ForgetPasswordEvent.formFieldFilling(
                                  fieldText: codeThree,
                                  fieldType: OTPFieldType.codeThree));
                          if (codeThree.isNotNullAndNotEmpty) {
                            FocusScope.of(context).requestFocus(
                                context.forgetPassword.codeFourFocusNode);
                          }
                        },
                        (codeFour) {
                          context.forgetPassword.add(
                              ForgetPasswordEvent.formFieldFilling(
                                  fieldText: codeFour,
                                  fieldType: OTPFieldType.codeFour));
                          if (codeFour.isNotNullAndNotEmpty) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),

                  GestureDetector(
                    onTap: () {},
                    child: CustomRichText(
                      length: 2,
                      texts: ["Didn’t receive code? \t", "Resend Code"],
                      textsColors: [
                        AppColors.primaryColor.shade900,
                        AppColors.primaryColor
                      ],
                      textsFonts: List.filled(2, AppFontSizes.s14),
                      textsFontsWeights: List.filled(2, AppFontWeights.regular),
                    ),
                  ),

                  ///
                  ///======================== Login Button ===========================
                  ///

                  SizedBox(height: 30.h),

                  MainButton(
                    width: double.infinity.w,
                    height: 45.h,
                    // onTap: context.forgetPassword.otpFormFilled
                    //     ? () => context.forgetPassword
                    //         .add(ForgetPasswordEvent.verifyCode())
                    //     : null,
                    onTap: () =>
                        context.pushNamed(RoutesNames.createNewPassword),
                    text: "Verify Code",
                    fontWeight: AppFontWeights.semiBold,
                    color: context.forgetPassword.otpFormFilled
                        ? AppColors.primaryColor
                        : AppColors.grey600,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
