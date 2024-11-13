part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;

  const factory LoginEvent.formFieldFilling(
      {required String fieldText,
      required LoginFieldType fieldType}) = _FormFieldFilling;

  const factory LoginEvent.loginAccountEvent() = _LoginAccountEvent;

  const factory LoginEvent.socialMediaLoginEvent(SocialMediaLogin type) =
      _SocialMediaLoginEvent;
}
