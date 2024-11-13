part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordEvent with _$ForgetPasswordEvent {
  const factory ForgetPasswordEvent.started() = _Started;

  const factory ForgetPasswordEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;

  const factory ForgetPasswordEvent.toggleConfirmPasswordVisibility() =
      _ToggleConfirmPasswordVisibility;

  const factory ForgetPasswordEvent.passwordFieldsFilling(
      {required String fieldText,
      required PasswordFieldType fieldType}) = _PasswordFieldsFilling;

  const factory ForgetPasswordEvent.formFieldFilling(
      {required String fieldText,
      required OTPFieldType fieldType}) = _FormFieldFilling;

  const factory ForgetPasswordEvent.verifyCode() = _VerifyCodeEvent;
}
