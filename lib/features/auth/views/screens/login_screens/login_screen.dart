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
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/buttons/main_button.dart';
import '../../../../../core/widgets/text_form_fields/text_form_fields.dart';
import '../../../controllers/login_controller/login_bloc.dart';
import '../../widgets/terms_and_policy.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return CustomScaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.arrow_back_ios_sharp,
                      color: AppColors.primaryColor)),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///
                    ///======================== Login Title ============================
                    ///
                    Row(children: [
                      ///----------------------- Title Icon ----------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.h),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SvgPicture.asset(
                            AppAssets.appLogo,
                            height: 48.h,
                            width: 48.w,
                          ),
                        ),
                      ),

                      SizedBox(width: 15.w),

                      ///------------------------ Title Text ---------------------------
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => LinearGradient(colors: [
                          Color(0xffF15A29),
                          Color(0xff20B39F),
                        ]).createShader(
                          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                        ),
                        child: CustomText(
                          text: "Welcome back!",
                          fontSize: AppFontSizes.s22.sp,
                          fontWeight: AppFontWeights.bold,
                        ),
                      ),
                    ]),

                    ///
                    ///======================== Login Form ============================
                    ///
                    Form(
                      key: context.login.formKey,
                      child: TextFormFields(
                        title: false,
                        phone: false,
                        widths: List.filled(2, 10.w),
                        maxLines: List.filled(2, 1),
                        fieldCount: 2,
                        hintTexts: [
                          "Email or Phone Number",
                          "Password",
                        ],
                        controllerList: [
                          context.login.emailController,
                          context.login.passwordController,
                        ],
                        focusNodeList: [
                          context.login.emailFocusNode,
                          context.login.passwordFocusNode,
                        ],
                        obscureTextList: [
                          false,
                          !context.login.passwordVisibility
                        ],
                        suffixIcon: [
                          null,
                          IconButton(
                              onPressed: () => context.login.add(
                                  const LoginEvent.togglePasswordVisibility()),
                              icon: SvgPicture.asset(
                                context.login.passwordVisibility
                                    ? AppAssets.showPassword
                                    : AppAssets.hidePassword,
                              ))
                        ],
                        validatorList: [
                          (email) =>
                              ValidationService.instance.validateEmail(email),
                          (password) => ValidationService.instance
                              .validatePassword(password),
                        ],
                        onEditingCompleteList: [
                          () => FocusScope.of(context)
                              .requestFocus(context.login.passwordFocusNode),
                          () => FocusScope.of(context)
                              .requestFocus(context.login.passwordFocusNode),
                        ],
                        onChangedList: [
                          (email) => context.login.add(
                              LoginEvent.formFieldFilling(
                                  fieldText: email,
                                  fieldType: LoginFieldType.email)),
                          (password) => context.login.add(
                              LoginEvent.formFieldFilling(
                                  fieldText: password,
                                  fieldType: LoginFieldType.password))
                        ],
                      ),
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
                      child: GestureDetector(
                        onTap: () =>
                            context.pushNamed(RoutesNames.forgetPassword),
                        child: CustomText(
                          text: "Forgot your password?",
                          color: AppColors.primaryColor,
                          fontSize: AppFontSizes.s12.sp,
                          fontWeight: AppFontWeights.semiBold,
                        ),
                      ),
                    ),

                    ///
                    ///======================== Login Button ===========================
                    ///
                    SizedBox(height: 40.h),
                    MainButton(
                      width: 360.w,
                      height: 45.h,
                      onTap: context.login.formFilled
                          ? () =>
                              context.login.add(LoginEvent.loginAccountEvent())
                          : null,
                      text: "Log in",
                      fontWeight: AppFontWeights.semiBold,
                      color: context.login.formFilled
                          ? AppColors.primaryColor
                          : AppColors.grey600,
                    ),

                    ///
                    ///======================== Social Media ===========================
                    ///

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 60.h),
                      child: Center(
                        child: CustomText(
                          text: "or log in with",
                          color: AppColors.grey600,
                          fontSize: AppFontSizes.s12.sp,
                          fontWeight: AppFontWeights.regular,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => CustomButton(
                          color: Colors.white,
                          onTap: () {
                            context.login
                                .add(LoginEvent.socialMediaLoginEvent(index == 0
                                    ? SocialMediaLogin.google
                                    : index == 1
                                        ? SocialMediaLogin.facebook
                                        : SocialMediaLogin.x));
                          },
                          title: Padding(
                            padding: EdgeInsets.all(context.width * 0.04),
                            child: SvgPicture.asset(
                              index == 0
                                  ? AppAssets.google
                                  : index == 1
                                      ? AppAssets.x
                                      : AppAssets.facebook,
                              width: context.width * 0.07,
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///
                    ///======================== Terms And Policy =================
                    ///
                    SizedBox(height: 150.h),
                    TermsAndPolicy(),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
