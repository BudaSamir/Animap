// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(String fieldText, LoginFieldType fieldType)
        formFieldFilling,
    required TResult Function() loginAccountEvent,
    required TResult Function(SocialMediaLogin type) socialMediaLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult? Function()? loginAccountEvent,
    TResult? Function(SocialMediaLogin type)? socialMediaLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? togglePasswordVisibility,
    TResult Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult Function()? loginAccountEvent,
    TResult Function(SocialMediaLogin type)? socialMediaLoginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
    required TResult Function(_LoginAccountEvent value) loginAccountEvent,
    required TResult Function(_SocialMediaLoginEvent value)
        socialMediaLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
    TResult? Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    TResult Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(String fieldText, LoginFieldType fieldType)
        formFieldFilling,
    required TResult Function() loginAccountEvent,
    required TResult Function(SocialMediaLogin type) socialMediaLoginEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult? Function()? loginAccountEvent,
    TResult? Function(SocialMediaLogin type)? socialMediaLoginEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? togglePasswordVisibility,
    TResult Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult Function()? loginAccountEvent,
    TResult Function(SocialMediaLogin type)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
    required TResult Function(_LoginAccountEvent value) loginAccountEvent,
    required TResult Function(_SocialMediaLoginEvent value)
        socialMediaLoginEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
    TResult? Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    TResult Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
          _$TogglePasswordVisibilityImpl value,
          $Res Function(_$TogglePasswordVisibilityImpl) then) =
      __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$TogglePasswordVisibilityImpl>
    implements _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl _value,
      $Res Function(_$TogglePasswordVisibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TogglePasswordVisibilityImpl implements _TogglePasswordVisibility {
  const _$TogglePasswordVisibilityImpl();

  @override
  String toString() {
    return 'LoginEvent.togglePasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(String fieldText, LoginFieldType fieldType)
        formFieldFilling,
    required TResult Function() loginAccountEvent,
    required TResult Function(SocialMediaLogin type) socialMediaLoginEvent,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult? Function()? loginAccountEvent,
    TResult? Function(SocialMediaLogin type)? socialMediaLoginEvent,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? togglePasswordVisibility,
    TResult Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult Function()? loginAccountEvent,
    TResult Function(SocialMediaLogin type)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
    required TResult Function(_LoginAccountEvent value) loginAccountEvent,
    required TResult Function(_SocialMediaLoginEvent value)
        socialMediaLoginEvent,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
    TResult? Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    TResult Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _TogglePasswordVisibility implements LoginEvent {
  const factory _TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$FormFieldFillingImplCopyWith<$Res> {
  factory _$$FormFieldFillingImplCopyWith(_$FormFieldFillingImpl value,
          $Res Function(_$FormFieldFillingImpl) then) =
      __$$FormFieldFillingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fieldText, LoginFieldType fieldType});
}

/// @nodoc
class __$$FormFieldFillingImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$FormFieldFillingImpl>
    implements _$$FormFieldFillingImplCopyWith<$Res> {
  __$$FormFieldFillingImplCopyWithImpl(_$FormFieldFillingImpl _value,
      $Res Function(_$FormFieldFillingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldText = null,
    Object? fieldType = null,
  }) {
    return _then(_$FormFieldFillingImpl(
      fieldText: null == fieldText
          ? _value.fieldText
          : fieldText // ignore: cast_nullable_to_non_nullable
              as String,
      fieldType: null == fieldType
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as LoginFieldType,
    ));
  }
}

/// @nodoc

class _$FormFieldFillingImpl implements _FormFieldFilling {
  const _$FormFieldFillingImpl(
      {required this.fieldText, required this.fieldType});

  @override
  final String fieldText;
  @override
  final LoginFieldType fieldType;

  @override
  String toString() {
    return 'LoginEvent.formFieldFilling(fieldText: $fieldText, fieldType: $fieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldFillingImpl &&
            (identical(other.fieldText, fieldText) ||
                other.fieldText == fieldText) &&
            (identical(other.fieldType, fieldType) ||
                other.fieldType == fieldType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldText, fieldType);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldFillingImplCopyWith<_$FormFieldFillingImpl> get copyWith =>
      __$$FormFieldFillingImplCopyWithImpl<_$FormFieldFillingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(String fieldText, LoginFieldType fieldType)
        formFieldFilling,
    required TResult Function() loginAccountEvent,
    required TResult Function(SocialMediaLogin type) socialMediaLoginEvent,
  }) {
    return formFieldFilling(fieldText, fieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult? Function()? loginAccountEvent,
    TResult? Function(SocialMediaLogin type)? socialMediaLoginEvent,
  }) {
    return formFieldFilling?.call(fieldText, fieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? togglePasswordVisibility,
    TResult Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult Function()? loginAccountEvent,
    TResult Function(SocialMediaLogin type)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (formFieldFilling != null) {
      return formFieldFilling(fieldText, fieldType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
    required TResult Function(_LoginAccountEvent value) loginAccountEvent,
    required TResult Function(_SocialMediaLoginEvent value)
        socialMediaLoginEvent,
  }) {
    return formFieldFilling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
    TResult? Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
  }) {
    return formFieldFilling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    TResult Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (formFieldFilling != null) {
      return formFieldFilling(this);
    }
    return orElse();
  }
}

abstract class _FormFieldFilling implements LoginEvent {
  const factory _FormFieldFilling(
      {required final String fieldText,
      required final LoginFieldType fieldType}) = _$FormFieldFillingImpl;

  String get fieldText;
  LoginFieldType get fieldType;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldFillingImplCopyWith<_$FormFieldFillingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginAccountEventImplCopyWith<$Res> {
  factory _$$LoginAccountEventImplCopyWith(_$LoginAccountEventImpl value,
          $Res Function(_$LoginAccountEventImpl) then) =
      __$$LoginAccountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAccountEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginAccountEventImpl>
    implements _$$LoginAccountEventImplCopyWith<$Res> {
  __$$LoginAccountEventImplCopyWithImpl(_$LoginAccountEventImpl _value,
      $Res Function(_$LoginAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginAccountEventImpl implements _LoginAccountEvent {
  const _$LoginAccountEventImpl();

  @override
  String toString() {
    return 'LoginEvent.loginAccountEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(String fieldText, LoginFieldType fieldType)
        formFieldFilling,
    required TResult Function() loginAccountEvent,
    required TResult Function(SocialMediaLogin type) socialMediaLoginEvent,
  }) {
    return loginAccountEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult? Function()? loginAccountEvent,
    TResult? Function(SocialMediaLogin type)? socialMediaLoginEvent,
  }) {
    return loginAccountEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? togglePasswordVisibility,
    TResult Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult Function()? loginAccountEvent,
    TResult Function(SocialMediaLogin type)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (loginAccountEvent != null) {
      return loginAccountEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
    required TResult Function(_LoginAccountEvent value) loginAccountEvent,
    required TResult Function(_SocialMediaLoginEvent value)
        socialMediaLoginEvent,
  }) {
    return loginAccountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
    TResult? Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
  }) {
    return loginAccountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    TResult Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (loginAccountEvent != null) {
      return loginAccountEvent(this);
    }
    return orElse();
  }
}

abstract class _LoginAccountEvent implements LoginEvent {
  const factory _LoginAccountEvent() = _$LoginAccountEventImpl;
}

/// @nodoc
abstract class _$$SocialMediaLoginEventImplCopyWith<$Res> {
  factory _$$SocialMediaLoginEventImplCopyWith(
          _$SocialMediaLoginEventImpl value,
          $Res Function(_$SocialMediaLoginEventImpl) then) =
      __$$SocialMediaLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialMediaLogin type});
}

/// @nodoc
class __$$SocialMediaLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SocialMediaLoginEventImpl>
    implements _$$SocialMediaLoginEventImplCopyWith<$Res> {
  __$$SocialMediaLoginEventImplCopyWithImpl(_$SocialMediaLoginEventImpl _value,
      $Res Function(_$SocialMediaLoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SocialMediaLoginEventImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialMediaLogin,
    ));
  }
}

/// @nodoc

class _$SocialMediaLoginEventImpl implements _SocialMediaLoginEvent {
  const _$SocialMediaLoginEventImpl(this.type);

  @override
  final SocialMediaLogin type;

  @override
  String toString() {
    return 'LoginEvent.socialMediaLoginEvent(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaLoginEventImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaLoginEventImplCopyWith<_$SocialMediaLoginEventImpl>
      get copyWith => __$$SocialMediaLoginEventImplCopyWithImpl<
          _$SocialMediaLoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() togglePasswordVisibility,
    required TResult Function(String fieldText, LoginFieldType fieldType)
        formFieldFilling,
    required TResult Function() loginAccountEvent,
    required TResult Function(SocialMediaLogin type) socialMediaLoginEvent,
  }) {
    return socialMediaLoginEvent(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult? Function()? loginAccountEvent,
    TResult? Function(SocialMediaLogin type)? socialMediaLoginEvent,
  }) {
    return socialMediaLoginEvent?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? togglePasswordVisibility,
    TResult Function(String fieldText, LoginFieldType fieldType)?
        formFieldFilling,
    TResult Function()? loginAccountEvent,
    TResult Function(SocialMediaLogin type)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (socialMediaLoginEvent != null) {
      return socialMediaLoginEvent(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
    required TResult Function(_LoginAccountEvent value) loginAccountEvent,
    required TResult Function(_SocialMediaLoginEvent value)
        socialMediaLoginEvent,
  }) {
    return socialMediaLoginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
    TResult? Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult? Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
  }) {
    return socialMediaLoginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    TResult Function(_LoginAccountEvent value)? loginAccountEvent,
    TResult Function(_SocialMediaLoginEvent value)? socialMediaLoginEvent,
    required TResult orElse(),
  }) {
    if (socialMediaLoginEvent != null) {
      return socialMediaLoginEvent(this);
    }
    return orElse();
  }
}

abstract class _SocialMediaLoginEvent implements LoginEvent {
  const factory _SocialMediaLoginEvent(final SocialMediaLogin type) =
      _$SocialMediaLoginEventImpl;

  SocialMediaLogin get type;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialMediaLoginEventImplCopyWith<_$SocialMediaLoginEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityStateImplCopyWith<$Res> {
  factory _$$TogglePasswordVisibilityStateImplCopyWith(
          _$TogglePasswordVisibilityStateImpl value,
          $Res Function(_$TogglePasswordVisibilityStateImpl) then) =
      __$$TogglePasswordVisibilityStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool passwordVisibility});
}

/// @nodoc
class __$$TogglePasswordVisibilityStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$TogglePasswordVisibilityStateImpl>
    implements _$$TogglePasswordVisibilityStateImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityStateImplCopyWithImpl(
      _$TogglePasswordVisibilityStateImpl _value,
      $Res Function(_$TogglePasswordVisibilityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordVisibility = null,
  }) {
    return _then(_$TogglePasswordVisibilityStateImpl(
      null == passwordVisibility
          ? _value.passwordVisibility
          : passwordVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TogglePasswordVisibilityStateImpl
    implements _TogglePasswordVisibilityState {
  const _$TogglePasswordVisibilityStateImpl(this.passwordVisibility);

  @override
  final bool passwordVisibility;

  @override
  String toString() {
    return 'LoginState.togglePasswordVisibility(passwordVisibility: $passwordVisibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityStateImpl &&
            (identical(other.passwordVisibility, passwordVisibility) ||
                other.passwordVisibility == passwordVisibility));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordVisibility);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePasswordVisibilityStateImplCopyWith<
          _$TogglePasswordVisibilityStateImpl>
      get copyWith => __$$TogglePasswordVisibilityStateImplCopyWithImpl<
          _$TogglePasswordVisibilityStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) {
    return togglePasswordVisibility(passwordVisibility);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) {
    return togglePasswordVisibility?.call(passwordVisibility);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(passwordVisibility);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _TogglePasswordVisibilityState implements LoginState {
  const factory _TogglePasswordVisibilityState(final bool passwordVisibility) =
      _$TogglePasswordVisibilityStateImpl;

  bool get passwordVisibility;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TogglePasswordVisibilityStateImplCopyWith<
          _$TogglePasswordVisibilityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormFieldFillingStateImplCopyWith<$Res> {
  factory _$$FormFieldFillingStateImplCopyWith(
          _$FormFieldFillingStateImpl value,
          $Res Function(_$FormFieldFillingStateImpl) then) =
      __$$FormFieldFillingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool formFilled});
}

/// @nodoc
class __$$FormFieldFillingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$FormFieldFillingStateImpl>
    implements _$$FormFieldFillingStateImplCopyWith<$Res> {
  __$$FormFieldFillingStateImplCopyWithImpl(_$FormFieldFillingStateImpl _value,
      $Res Function(_$FormFieldFillingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formFilled = null,
  }) {
    return _then(_$FormFieldFillingStateImpl(
      null == formFilled
          ? _value.formFilled
          : formFilled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FormFieldFillingStateImpl implements _FormFieldFillingState {
  const _$FormFieldFillingStateImpl(this.formFilled);

  @override
  final bool formFilled;

  @override
  String toString() {
    return 'LoginState.formFieldFilling(formFilled: $formFilled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormFieldFillingStateImpl &&
            (identical(other.formFilled, formFilled) ||
                other.formFilled == formFilled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formFilled);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldFillingStateImplCopyWith<_$FormFieldFillingStateImpl>
      get copyWith => __$$FormFieldFillingStateImplCopyWithImpl<
          _$FormFieldFillingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) {
    return formFieldFilling(formFilled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) {
    return formFieldFilling?.call(formFilled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) {
    if (formFieldFilling != null) {
      return formFieldFilling(formFilled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return formFieldFilling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return formFieldFilling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (formFieldFilling != null) {
      return formFieldFilling(this);
    }
    return orElse();
  }
}

abstract class _FormFieldFillingState implements LoginState {
  const factory _FormFieldFillingState(final bool formFilled) =
      _$FormFieldFillingStateImpl;

  bool get formFilled;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldFillingStateImplCopyWith<_$FormFieldFillingStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl implements _LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements LoginState {
  const factory _LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString() {
    return 'LoginState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements LoginState {
  const factory _LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginFailureImpl implements _LoginFailure {
  const _$LoginFailureImpl();

  @override
  String toString() {
    return 'LoginState.loginFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool passwordVisibility) togglePasswordVisibility,
    required TResult Function(bool formFilled) formFieldFilling,
    required TResult Function() loginLoading,
    required TResult Function() loginSuccess,
    required TResult Function() loginFailure,
  }) {
    return loginFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult? Function(bool formFilled)? formFieldFilling,
    TResult? Function()? loginLoading,
    TResult? Function()? loginSuccess,
    TResult? Function()? loginFailure,
  }) {
    return loginFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool passwordVisibility)? togglePasswordVisibility,
    TResult Function(bool formFilled)? formFieldFilling,
    TResult Function()? loginLoading,
    TResult Function()? loginSuccess,
    TResult Function()? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TogglePasswordVisibilityState value)
        togglePasswordVisibility,
    required TResult Function(_FormFieldFillingState value) formFieldFilling,
    required TResult Function(_LoginLoading value) loginLoading,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult? Function(_FormFieldFillingState value)? formFieldFilling,
    TResult? Function(_LoginLoading value)? loginLoading,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TogglePasswordVisibilityState value)?
        togglePasswordVisibility,
    TResult Function(_FormFieldFillingState value)? formFieldFilling,
    TResult Function(_LoginLoading value)? loginLoading,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements LoginState {
  const factory _LoginFailure() = _$LoginFailureImpl;
}
