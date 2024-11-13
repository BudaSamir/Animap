import 'package:animap_app/core/extensions/bloc_helper.dart';
import 'package:animap_app/core/extensions/media_query_helper.dart';
import 'package:animap_app/core/extensions/navigate_helper.dart';
import 'package:animap_app/core/utils/constants/app_fonts.dart';
import 'package:animap_app/core/widgets/scaffold/custom_scaffold.dart';
import 'package:animap_app/core/widgets/texts/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/services/route_services/routes_names.dart';
import '../../../../../core/services/validation_service.dart';
import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/widgets/buttons/main_button.dart';
import '../../../../../core/widgets/text_form_fields/password_form_fields.dart';
import '../../../controllers/forget_password_controller/forget_password_bloc.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

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
                  ///======================== Title ==================================
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: context.height * 0.03),
                    child: CustomText(
                      text: "Create New Password",
                      color: AppColors.primaryColor.shade800,
                      fontSize: AppFontSizes.s20,
                      fontWeight: AppFontWeights.bold,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  ///======================== Email ==================================

                  Form(
                    key: context.forgetPassword.newPasswordFormKey,
                    child: PasswordFormFields(
                      title: false,
                      widths: List.filled(2, 15),
                      maxLines: List.filled(2, 1),
                      fieldCount: 2,
                      hintTexts: [
                        "Create Password",
                        "Confirm Password",
                      ],
                      controllerList: [
                        context.forgetPassword.createPasswordController,
                        context.forgetPassword.confirmPasswordController,
                      ],
                      focusNodeList: [
                        context.forgetPassword.createPasswordFocusNode,
                        context.forgetPassword.confirmPasswordFocusNode,
                      ],
                      obscureTextList: [
                        !context.forgetPassword.passwordVisibility,
                        !context.forgetPassword.confirmPasswordVisibility
                      ],
                      suffixIcon: [
                        IconButton(
                            onPressed: () => context.forgetPassword.add(
                                const ForgetPasswordEvent
                                    .togglePasswordVisibility()),
                            icon: SvgPicture.asset(
                              context.forgetPassword.passwordVisibility
                                  ? AppAssets.showPassword
                                  : AppAssets.hidePassword,
                            )),
                        IconButton(
                            onPressed: () => context.forgetPassword.add(
                                const ForgetPasswordEvent
                                    .toggleConfirmPasswordVisibility()),
                            icon: SvgPicture.asset(
                              context.forgetPassword.confirmPasswordVisibility
                                  ? AppAssets.showPassword
                                  : AppAssets.hidePassword,
                            )),
                      ],
                      validatorList: [
                        (password) => ValidationService.instance
                            .validatePassword(password),
                        (confirmPassword) => ValidationService.instance
                            .validateConfirmPassword(
                                context.forgetPassword.confirmPasswordController
                                    .text,
                                confirmPassword),
                      ],
                      onEditingCompleteList: [
                        () => FocusScope.of(context).requestFocus(
                            context.forgetPassword.confirmPasswordFocusNode),
                        () => FocusScope.of(context).unfocus(),
                      ],
                      onChangedList: [
                        (password) => context.forgetPassword.add(
                            ForgetPasswordEvent.passwordFieldsFilling(
                                fieldText: password,
                                fieldType: PasswordFieldType.password)),
                        (confirmPassword) => context.forgetPassword.add(
                            ForgetPasswordEvent.passwordFieldsFilling(
                                fieldText: confirmPassword,
                                fieldType: PasswordFieldType.confirmPassword))
                      ],
                    ),
                  ),

                  ///
                  ///======================== Login Button ===========================
                  ///

                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: context.height * 0.03),
                    child: MainButton(
                      width: double.infinity.w,
                      height: 45.h,
                      // onTap: context.forgetPassword.formFilled
                      //     ? () => context.forgetPassword.add
                      //     : null,
                      onTap: () => context.pushNamed(RoutesNames.otp),
                      text: "Confirm New Password",
                      fontWeight: AppFontWeights.semiBold,
                      // color: context.forgetPassword.formFilled
                      //     ? AppColors.primaryColor
                      //     : AppColors.grey600,
                    ),
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
