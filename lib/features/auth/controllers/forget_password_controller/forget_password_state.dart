part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;

  const factory ForgetPasswordState.togglePasswordVisibility(
      bool passwordVisibility) = _TogglePasswordVisibilityState;

  const factory ForgetPasswordState.toggleConfirmPasswordVisibility(
      bool confirmPasswordVisibility) = _ToggleConfirmPasswordVisibilityState;

  const factory ForgetPasswordState.passwordFormFieldFilling(
      bool passwordFieldType) = _PasswordFormFieldFilling;

  const factory ForgetPasswordState.otpFormFieldFilling(bool otpFieldType) =
      _OTPFormFieldFillingState;
}
