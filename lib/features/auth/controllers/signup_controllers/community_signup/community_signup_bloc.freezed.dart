// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommunitySignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String fieldText, SignupCommunityFieldType fieldType)
        formFieldFilling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String fieldText, SignupCommunityFieldType fieldType)?
        formFieldFilling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String fieldText, SignupCommunityFieldType fieldType)?
        formFieldFilling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FormFieldFilling value) formFieldFilling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitySignupEventCopyWith<$Res> {
  factory $CommunitySignupEventCopyWith(CommunitySignupEvent value,
          $Res Function(CommunitySignupEvent) then) =
      _$CommunitySignupEventCopyWithImpl<$Res, CommunitySignupEvent>;
}

/// @nodoc
class _$CommunitySignupEventCopyWithImpl<$Res,
        $Val extends CommunitySignupEvent>
    implements $CommunitySignupEventCopyWith<$Res> {
  _$CommunitySignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunitySignupEvent
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
    extends _$CommunitySignupEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunitySignupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CommunitySignupEvent.started()';
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
    required TResult Function(
            String fieldText, SignupCommunityFieldType fieldType)
        formFieldFilling,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String fieldText, SignupCommunityFieldType fieldType)?
        formFieldFilling,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String fieldText, SignupCommunityFieldType fieldType)?
        formFieldFilling,
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
    required TResult Function(_FormFieldFilling value) formFieldFilling,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommunitySignupEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FormFieldFillingImplCopyWith<$Res> {
  factory _$$FormFieldFillingImplCopyWith(_$FormFieldFillingImpl value,
          $Res Function(_$FormFieldFillingImpl) then) =
      __$$FormFieldFillingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fieldText, SignupCommunityFieldType fieldType});
}

/// @nodoc
class __$$FormFieldFillingImplCopyWithImpl<$Res>
    extends _$CommunitySignupEventCopyWithImpl<$Res, _$FormFieldFillingImpl>
    implements _$$FormFieldFillingImplCopyWith<$Res> {
  __$$FormFieldFillingImplCopyWithImpl(_$FormFieldFillingImpl _value,
      $Res Function(_$FormFieldFillingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunitySignupEvent
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
              as SignupCommunityFieldType,
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
  final SignupCommunityFieldType fieldType;

  @override
  String toString() {
    return 'CommunitySignupEvent.formFieldFilling(fieldText: $fieldText, fieldType: $fieldType)';
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

  /// Create a copy of CommunitySignupEvent
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
    required TResult Function(
            String fieldText, SignupCommunityFieldType fieldType)
        formFieldFilling,
  }) {
    return formFieldFilling(fieldText, fieldType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String fieldText, SignupCommunityFieldType fieldType)?
        formFieldFilling,
  }) {
    return formFieldFilling?.call(fieldText, fieldType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String fieldText, SignupCommunityFieldType fieldType)?
        formFieldFilling,
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
    required TResult Function(_FormFieldFilling value) formFieldFilling,
  }) {
    return formFieldFilling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FormFieldFilling value)? formFieldFilling,
  }) {
    return formFieldFilling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FormFieldFilling value)? formFieldFilling,
    required TResult orElse(),
  }) {
    if (formFieldFilling != null) {
      return formFieldFilling(this);
    }
    return orElse();
  }
}

abstract class _FormFieldFilling implements CommunitySignupEvent {
  const factory _FormFieldFilling(
          {required final String fieldText,
          required final SignupCommunityFieldType fieldType}) =
      _$FormFieldFillingImpl;

  String get fieldText;
  SignupCommunityFieldType get fieldType;

  /// Create a copy of CommunitySignupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldFillingImplCopyWith<_$FormFieldFillingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommunitySignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitySignupStateCopyWith<$Res> {
  factory $CommunitySignupStateCopyWith(CommunitySignupState value,
          $Res Function(CommunitySignupState) then) =
      _$CommunitySignupStateCopyWithImpl<$Res, CommunitySignupState>;
}

/// @nodoc
class _$CommunitySignupStateCopyWithImpl<$Res,
        $Val extends CommunitySignupState>
    implements $CommunitySignupStateCopyWith<$Res> {
  _$CommunitySignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunitySignupState
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
    extends _$CommunitySignupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommunitySignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CommunitySignupState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommunitySignupState {
  const factory _Initial() = _$InitialImpl;
}
