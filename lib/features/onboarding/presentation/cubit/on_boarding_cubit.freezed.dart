// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnBoardingState {
  List<OnBoardEntity> get onBoardingEntities =>
      throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({List<OnBoardEntity> onBoardingEntities, int pageIndex});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onBoardingEntities = null,
    Object? pageIndex = null,
  }) {
    return _then(_value.copyWith(
      onBoardingEntities: null == onBoardingEntities
          ? _value.onBoardingEntities
          : onBoardingEntities // ignore: cast_nullable_to_non_nullable
              as List<OnBoardEntity>,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
          _$SplashStateImpl value, $Res Function(_$SplashStateImpl) then) =
      __$$SplashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OnBoardEntity> onBoardingEntities, int pageIndex});
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
      _$SplashStateImpl _value, $Res Function(_$SplashStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onBoardingEntities = null,
    Object? pageIndex = null,
  }) {
    return _then(_$SplashStateImpl(
      onBoardingEntities: null == onBoardingEntities
          ? _value._onBoardingEntities
          : onBoardingEntities // ignore: cast_nullable_to_non_nullable
              as List<OnBoardEntity>,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SplashStateImpl extends _SplashState {
  _$SplashStateImpl(
      {final List<OnBoardEntity> onBoardingEntities = const [],
      this.pageIndex = 0})
      : _onBoardingEntities = onBoardingEntities,
        super._();

  final List<OnBoardEntity> _onBoardingEntities;
  @override
  @JsonKey()
  List<OnBoardEntity> get onBoardingEntities {
    if (_onBoardingEntities is EqualUnmodifiableListView)
      return _onBoardingEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onBoardingEntities);
  }

  @override
  @JsonKey()
  final int pageIndex;

  @override
  String toString() {
    return 'OnBoardingState(onBoardingEntities: $onBoardingEntities, pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashStateImpl &&
            const DeepCollectionEquality()
                .equals(other._onBoardingEntities, _onBoardingEntities) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_onBoardingEntities), pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);
}

abstract class _SplashState extends OnBoardingState {
  factory _SplashState(
      {final List<OnBoardEntity> onBoardingEntities,
      final int pageIndex}) = _$SplashStateImpl;
  _SplashState._() : super._();

  @override
  List<OnBoardEntity> get onBoardingEntities;
  @override
  int get pageIndex;
  @override
  @JsonKey(ignore: true)
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
