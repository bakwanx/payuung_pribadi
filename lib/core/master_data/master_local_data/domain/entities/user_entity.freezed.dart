// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEntity {
  int get userId => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get bornDate => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get education => throw _privateConstructorUsedError;
  String get maritalStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {int userId,
      String imgPath,
      String fullname,
      String bornDate,
      String gender,
      String email,
      String password,
      String phoneNumber,
      String education,
      String maritalStatus});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? imgPath = null,
    Object? fullname = null,
    Object? bornDate = null,
    Object? gender = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? education = null,
    Object? maritalStatus = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      bornDate: null == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String imgPath,
      String fullname,
      String bornDate,
      String gender,
      String email,
      String password,
      String phoneNumber,
      String education,
      String maritalStatus});
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? imgPath = null,
    Object? fullname = null,
    Object? bornDate = null,
    Object? gender = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? education = null,
    Object? maritalStatus = null,
  }) {
    return _then(_$UserEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      bornDate: null == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      maritalStatus: null == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {this.userId = 0,
      this.imgPath = '',
      this.fullname = '',
      this.bornDate = '',
      this.gender = '',
      this.email = '',
      this.password = '',
      this.phoneNumber = '',
      this.education = '',
      this.maritalStatus = ''});

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String imgPath;
  @override
  @JsonKey()
  final String fullname;
  @override
  @JsonKey()
  final String bornDate;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String education;
  @override
  @JsonKey()
  final String maritalStatus;

  @override
  String toString() {
    return 'UserEntity(userId: $userId, imgPath: $imgPath, fullname: $fullname, bornDate: $bornDate, gender: $gender, email: $email, password: $password, phoneNumber: $phoneNumber, education: $education, maritalStatus: $maritalStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.bornDate, bornDate) ||
                other.bornDate == bornDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, imgPath, fullname,
      bornDate, gender, email, password, phoneNumber, education, maritalStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {final int userId,
      final String imgPath,
      final String fullname,
      final String bornDate,
      final String gender,
      final String email,
      final String password,
      final String phoneNumber,
      final String education,
      final String maritalStatus}) = _$UserEntityImpl;

  @override
  int get userId;
  @override
  String get imgPath;
  @override
  String get fullname;
  @override
  String get bornDate;
  @override
  String get gender;
  @override
  String get email;
  @override
  String get password;
  @override
  String get phoneNumber;
  @override
  String get education;
  @override
  String get maritalStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
