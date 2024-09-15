// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  Exception? get error => throw _privateConstructorUsedError;
  bool get isSuccessLogin => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get isActiveButtonEmail => throw _privateConstructorUsedError;
  bool get isActiveButtonPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Exception? error,
      bool isSuccessLogin,
      bool loading,
      bool isActiveButtonEmail,
      bool isActiveButtonPassword});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isSuccessLogin = null,
    Object? loading = null,
    Object? isActiveButtonEmail = null,
    Object? isActiveButtonPassword = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isSuccessLogin: null == isSuccessLogin
          ? _value.isSuccessLogin
          : isSuccessLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveButtonEmail: null == isActiveButtonEmail
          ? _value.isActiveButtonEmail
          : isActiveButtonEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveButtonPassword: null == isActiveButtonPassword
          ? _value.isActiveButtonPassword
          : isActiveButtonPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Exception? error,
      bool isSuccessLogin,
      bool loading,
      bool isActiveButtonEmail,
      bool isActiveButtonPassword});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isSuccessLogin = null,
    Object? loading = null,
    Object? isActiveButtonEmail = null,
    Object? isActiveButtonPassword = null,
  }) {
    return _then(_$LoginStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      isSuccessLogin: null == isSuccessLogin
          ? _value.isSuccessLogin
          : isSuccessLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveButtonEmail: null == isActiveButtonEmail
          ? _value.isActiveButtonEmail
          : isActiveButtonEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      isActiveButtonPassword: null == isActiveButtonPassword
          ? _value.isActiveButtonPassword
          : isActiveButtonPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {this.error,
      this.isSuccessLogin = false,
      this.loading = false,
      this.isActiveButtonEmail = false,
      this.isActiveButtonPassword = false})
      : super._();

  @override
  final Exception? error;
  @override
  @JsonKey()
  final bool isSuccessLogin;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool isActiveButtonEmail;
  @override
  @JsonKey()
  final bool isActiveButtonPassword;

  @override
  String toString() {
    return 'LoginState(error: $error, isSuccessLogin: $isSuccessLogin, loading: $loading, isActiveButtonEmail: $isActiveButtonEmail, isActiveButtonPassword: $isActiveButtonPassword)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final Exception? error,
      final bool isSuccessLogin,
      final bool loading,
      final bool isActiveButtonEmail,
      final bool isActiveButtonPassword}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  Exception? get error;
  @override
  bool get isSuccessLogin;
  @override
  bool get loading;
  @override
  bool get isActiveButtonEmail;
  @override
  bool get isActiveButtonPassword;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
