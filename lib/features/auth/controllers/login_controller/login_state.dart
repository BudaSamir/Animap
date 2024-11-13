part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.togglePasswordVisibility(bool passwordVisibility) =
      _TogglePasswordVisibilityState;

  const factory LoginState.formFieldFilling(bool formFilled) =
      _FormFieldFillingState;

  const factory LoginState.loginLoading() = _LoginLoading;

  const factory LoginState.loginSuccess() = _LoginSuccess;

  const factory LoginState.loginFailure() = _LoginFailure;
}
