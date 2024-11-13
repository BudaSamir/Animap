import 'package:animap_app/core/extensions/datatype_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/services/network_services/network.dart';
import '../../data/data_source/remote/auth_remote_data_source.dart';
import '../../data/repo/auth_repository.dart';

part 'forget_password_bloc.freezed.dart';
part 'forget_password_event.dart';
part 'forget_password_state.dart';

enum OTPFieldType { codeOne, codeTwo, codeThree, codeFour }

enum PasswordFieldType { password, confirmPassword }

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  static ForgetPasswordBloc get(context) =>
      BlocProvider.of(context, listen: false);
  late final BaseAuthRepository authRepository;

  /// Reset Password Screen Attributes
  late final GlobalKey<FormState>? resetPasswordFormKey;
  late final TextEditingController emailController;
  late final FocusNode emailFocusNode;

  /// OTP Screen Attributes
  late final GlobalKey<FormState>? verificationCodeFormKey;

  late final TextEditingController codeOneController;
  late final TextEditingController codeTwoController;
  late final TextEditingController codeThreeController;
  late final TextEditingController codeFourController;

  late final FocusNode codeOneFocusNode;
  late final FocusNode codeTwoFocusNode;
  late final FocusNode codeThreeFocusNode;
  late final FocusNode codeFourFocusNode;

  String? verificationCode;
  bool otpFormFilled = false;

  /// Create New Password Screen Attributes
  late final GlobalKey<FormState>? newPasswordFormKey;
  late final TextEditingController createPasswordController;
  late final TextEditingController confirmPasswordController;

  late final FocusNode createPasswordFocusNode;
  late final FocusNode confirmPasswordFocusNode;

  bool passwordVisibility = false;
  bool confirmPasswordVisibility = false;
  bool passwordFormFilled = false;

  ForgetPasswordBloc() : super(const ForgetPasswordState.initial()) {
    authRepository = AuthRepository(AuthRemoteDataSource());

    /// Reset Password Screen Attributes Values
    resetPasswordFormKey = GlobalKey();
    emailController = TextEditingController();
    emailFocusNode = FocusNode();

    /// OTP Screen Attributes Values
    verificationCodeFormKey = GlobalKey();

    codeOneController = TextEditingController();
    codeTwoController = TextEditingController();
    codeThreeController = TextEditingController();
    codeFourController = TextEditingController();

    codeOneFocusNode = FocusNode();
    codeTwoFocusNode = FocusNode();
    codeThreeFocusNode = FocusNode();
    codeFourFocusNode = FocusNode();

    /// Create New Password Screen Attributes Values
    newPasswordFormKey = GlobalKey();
    createPasswordController = TextEditingController();
    confirmPasswordController = TextEditingController();

    createPasswordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();

    on<ForgetPasswordEvent>((event, emit) {
      event.when(
        started: () {},

        /// ==================== Form Fields Filling =========================
        formFieldFilling: (fieldText, fieldType) {
          switch (fieldType) {
            case OTPFieldType.codeOne:
              codeOneController.text = fieldText;

            case OTPFieldType.codeTwo:
              codeTwoController.text = fieldText;

            case OTPFieldType.codeThree:
              codeThreeController.text = fieldText;

            case OTPFieldType.codeFour:
              codeFourController.text = fieldText;
          }
          if (codeOneController.text.isNotNullAndNotEmpty &&
              codeTwoController.text.isNotNullAndNotEmpty &&
              codeThreeController.text.isNotNullAndNotEmpty &&
              codeFourController.text.isNotNullAndNotEmpty) {
            verificationCode = codeOneController.text +
                codeTwoController.text +
                codeThreeController.text +
                codeFourController.text;
            otpFormFilled = true;
          } else {
            verificationCode = null;
            otpFormFilled = false;
          }
          emit(ForgetPasswordState.otpFormFieldFilling(otpFormFilled));
        },
        verifyCode: () {},

        ///
        ///================ Create New Password Screen =========================
        ///
        ///---------------- Toggle Password Visibility -------------------------
        togglePasswordVisibility: () {
          passwordVisibility = !passwordVisibility;
          emit(
              ForgetPasswordState.togglePasswordVisibility(passwordVisibility));
        },

        ///--------------- Toggle Confirm Password Visibility ------------------
        toggleConfirmPasswordVisibility: () {
          confirmPasswordVisibility = !confirmPasswordVisibility;
          emit(ForgetPasswordState.toggleConfirmPasswordVisibility(
              confirmPasswordVisibility));
        },

        /// ==================== Password Fields Filling =======================
        passwordFieldsFilling: (fieldText, fieldType) {
          switch (fieldType) {
            case PasswordFieldType.password:
              createPasswordController.text = fieldText;

            case PasswordFieldType.confirmPassword:
              confirmPasswordController.text = fieldText;
          }
          if (createPasswordController.text.isNotNullAndNotEmpty &&
              confirmPasswordController.text.isNotNullAndNotEmpty) {
            passwordFormFilled = true;
          } else {
            passwordFormFilled = false;
          }
          emit(
              ForgetPasswordState.passwordFormFieldFilling(passwordFormFilled));
        },
      );
    });
  }
}
