// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Exception? get error => throw _privateConstructorUsedError;
  List<FinancialItemEntity> get financialItemEntities =>
      throw _privateConstructorUsedError;
  List<CategoryItemEntity> get categoryItemEntities =>
      throw _privateConstructorUsedError;
  List<WellnessEntity> get wellnessEntities =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Exception? error,
      List<FinancialItemEntity> financialItemEntities,
      List<CategoryItemEntity> categoryItemEntities,
      List<WellnessEntity> wellnessEntities,
      bool loading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? financialItemEntities = null,
    Object? categoryItemEntities = null,
    Object? wellnessEntities = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      financialItemEntities: null == financialItemEntities
          ? _value.financialItemEntities
          : financialItemEntities // ignore: cast_nullable_to_non_nullable
              as List<FinancialItemEntity>,
      categoryItemEntities: null == categoryItemEntities
          ? _value.categoryItemEntities
          : categoryItemEntities // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemEntity>,
      wellnessEntities: null == wellnessEntities
          ? _value.wellnessEntities
          : wellnessEntities // ignore: cast_nullable_to_non_nullable
              as List<WellnessEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
          _$SplashStateImpl value, $Res Function(_$SplashStateImpl) then) =
      __$$SplashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Exception? error,
      List<FinancialItemEntity> financialItemEntities,
      List<CategoryItemEntity> categoryItemEntities,
      List<WellnessEntity> wellnessEntities,
      bool loading});
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
      _$SplashStateImpl _value, $Res Function(_$SplashStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? financialItemEntities = null,
    Object? categoryItemEntities = null,
    Object? wellnessEntities = null,
    Object? loading = null,
  }) {
    return _then(_$SplashStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception?,
      financialItemEntities: null == financialItemEntities
          ? _value._financialItemEntities
          : financialItemEntities // ignore: cast_nullable_to_non_nullable
              as List<FinancialItemEntity>,
      categoryItemEntities: null == categoryItemEntities
          ? _value._categoryItemEntities
          : categoryItemEntities // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemEntity>,
      wellnessEntities: null == wellnessEntities
          ? _value._wellnessEntities
          : wellnessEntities // ignore: cast_nullable_to_non_nullable
              as List<WellnessEntity>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SplashStateImpl extends _SplashState {
  _$SplashStateImpl(
      {this.error,
      final List<FinancialItemEntity> financialItemEntities = const [],
      final List<CategoryItemEntity> categoryItemEntities = const [],
      final List<WellnessEntity> wellnessEntities = const [],
      this.loading = false})
      : _financialItemEntities = financialItemEntities,
        _categoryItemEntities = categoryItemEntities,
        _wellnessEntities = wellnessEntities,
        super._();

  @override
  final Exception? error;
  final List<FinancialItemEntity> _financialItemEntities;
  @override
  @JsonKey()
  List<FinancialItemEntity> get financialItemEntities {
    if (_financialItemEntities is EqualUnmodifiableListView)
      return _financialItemEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_financialItemEntities);
  }

  final List<CategoryItemEntity> _categoryItemEntities;
  @override
  @JsonKey()
  List<CategoryItemEntity> get categoryItemEntities {
    if (_categoryItemEntities is EqualUnmodifiableListView)
      return _categoryItemEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryItemEntities);
  }

  final List<WellnessEntity> _wellnessEntities;
  @override
  @JsonKey()
  List<WellnessEntity> get wellnessEntities {
    if (_wellnessEntities is EqualUnmodifiableListView)
      return _wellnessEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wellnessEntities);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'HomeState(error: $error, financialItemEntities: $financialItemEntities, categoryItemEntities: $categoryItemEntities, wellnessEntities: $wellnessEntities, loading: $loading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);
}

abstract class _SplashState extends HomeState {
  factory _SplashState(
      {final Exception? error,
      final List<FinancialItemEntity> financialItemEntities,
      final List<CategoryItemEntity> categoryItemEntities,
      final List<WellnessEntity> wellnessEntities,
      final bool loading}) = _$SplashStateImpl;
  _SplashState._() : super._();

  @override
  Exception? get error;
  @override
  List<FinancialItemEntity> get financialItemEntities;
  @override
  List<CategoryItemEntity> get categoryItemEntities;
  @override
  List<WellnessEntity> get wellnessEntities;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
