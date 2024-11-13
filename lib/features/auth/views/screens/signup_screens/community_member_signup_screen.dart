import 'package:animap_app/core/extensions/bloc_helper.dart';
import 'package:animap_app/core/extensions/media_query_helper.dart';
import 'package:animap_app/core/extensions/navigate_helper.dart';
import 'package:animap_app/core/utils/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/services/validation_service.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_fonts.dart';
import '../../../../../core/widgets/buttons/main_button.dart';
import '../../../../../core/widgets/scaffold/custom_scaffold.dart';
import '../../../../../core/widgets/text_form_fields/text_form_fields.dart';
import '../../../../../core/widgets/texts/custom_text.dart';
import '../../../controllers/signup_controllers/community_signup/community_signup_bloc.dart';
import '../../widgets/terms_and_policy.dart';

class CommunityMemberSignupScreen extends StatelessWidget {
  const CommunityMemberSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunitySignupBloc, CommunitySignupState>(
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
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ColoredBox(
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///======================== Title ================================
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: context.height * 0.03),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: "Sign Up",
                        color: AppColors.primaryColor.shade800,
                        fontSize: AppFontSizes.s20,
                        fontWeight: AppFontWeights.bold,
                      ),
                    ),
                  ),

                  ///======================== Title ================================
                  SvgPicture.asset(AppAssets.accountInformation),
                  CustomText(
                    text: "Account Information",
                    color: AppColors.primaryColor.shade700,
                    fontSize: AppFontSizes.s14,
                    fontWeight: AppFontWeights.semiBold,
                  ),

                  ///
                  ///=============== community Signup Form =====================
                  ///
                  Form(
                    key: context.communitySignup.formKey,
                    child: TextFormFields(
                      title: false,
                      phone: true,
                      widths: List.filled(4, 10.w),
                      maxLines: List.filled(4, 1),
                      fieldCount: 4,
                      hintTexts: [
                        "First Name",
                        "Last Name",
                        "Email",
                        "Phone Number",
                      ],
                      controllerList: [
                        context.communitySignup.firstNameController,
                        context.communitySignup.lastNameNameController,
                        context.communitySignup.emailController,
                        context.communitySignup.phoneController,
                      ],
                      focusNodeList: [
                        context.communitySignup.firstNameFocusNode,
                        context.communitySignup.lastNameFocusNode,
                        context.communitySignup.emailFocusNode,
                        context.communitySignup.phoneFocusNode,
                      ],
                      validatorList: [
                        (firstName) => ValidationService.instance
                            .validateName(firstName, "First Name"),
                        (lastName) => ValidationService.instance
                            .validateName(lastName, "Last Name"),
                        (email) =>
                            ValidationService.instance.validateEmail(email),
                        (phone) =>
                            ValidationService.instance.validatePhone(phone),
                      ],
                      onEditingCompleteList: [
                        () => FocusScope.of(context).requestFocus(
                            context.communitySignup.lastNameFocusNode),
                        () => FocusScope.of(context).requestFocus(
                            context.communitySignup.emailFocusNode),
                        () => FocusScope.of(context).requestFocus(
                            context.communitySignup.phoneFocusNode),
                        () => FocusScope.of(context).unfocus(),
                      ],
                      onChangedList: [
                        (firstName) => context.communitySignup.add(
                            CommunitySignupEvent.formFieldFilling(
                                fieldText: firstName,
                                fieldType: SignupCommunityFieldType.firstName)),
                        (lastName) => context.communitySignup.add(
                            CommunitySignupEvent.formFieldFilling(
                                fieldText: lastName,
                                fieldType: SignupCommunityFieldType.lastName)),
                        (email) => context.communitySignup.add(
                            CommunitySignupEvent.formFieldFilling(
                                fieldText: email,
                                fieldType: SignupCommunityFieldType.email)),
                        (phone) => context.communitySignup.add(
                            CommunitySignupEvent.formFieldFilling(
                                fieldText: phone,
                                fieldType: SignupCommunityFieldType.phone)),
                      ],
                    ),
                  ),

                  ///
                  ///======================== Login Button ===========================
                  ///
                  SizedBox(height: 40.h),
                  MainButton(
                    width: 360.w,
                    height: 45.h,
                    onTap: () {},
                    // onTap: context.login.formFilled
                    //     ? () =>
                    //     context.login.add(LoginEvent.loginAccountEvent())
                    //     : null,
                    text: "Next",
                    fontWeight: AppFontWeights.semiBold,
                    color: context.communitySignup.formFilled
                        ? AppColors.primaryColor
                        : AppColors.grey600,
                  ),

                  ///
                  ///======================== Terms And Policy =================
                  ///
                  // SizedBox(height: 160.h),
                  // Spacer(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: TermsAndPolicy()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
