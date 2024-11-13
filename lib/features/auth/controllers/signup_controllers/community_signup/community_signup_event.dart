part of 'community_signup_bloc.dart';

@freezed
class CommunitySignupEvent with _$CommunitySignupEvent {
  const factory CommunitySignupEvent.started() = _Started;

  const factory CommunitySignupEvent.formFieldFilling(
      {required String fieldText,
      required SignupCommunityFieldType fieldType}) = _FormFieldFilling;
}
