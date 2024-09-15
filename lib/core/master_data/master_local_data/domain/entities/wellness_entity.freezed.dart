// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wellness_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WellnessEntity {
  int get id => throw _privateConstructorUsedError;
  String get imgName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get minBuy => throw _privateConstructorUsedError;
  int get maxBuy => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WellnessEntityCopyWith<WellnessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WellnessEntityCopyWith<$Res> {
  factory $WellnessEntityCopyWith(
          WellnessEntity value, $Res Function(WellnessEntity) then) =
      _$WellnessEntityCopyWithImpl<$Res, WellnessEntity>;
  @useResult
  $Res call(
      {int id,
      String imgName,
      String title,
      String category,
      int price,
      int minBuy,
      int maxBuy,
      String description});
}

/// @nodoc
class _$WellnessEntityCopyWithImpl<$Res, $Val extends WellnessEntity>
    implements $WellnessEntityCopyWith<$Res> {
  _$WellnessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgName = null,
    Object? title = null,
    Object? category = null,
    Object? price = null,
    Object? minBuy = null,
    Object? maxBuy = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imgName: null == imgName
          ? _value.imgName
          : imgName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      minBuy: null == minBuy
          ? _value.minBuy
          : minBuy // ignore: cast_nullable_to_non_nullable
              as int,
      maxBuy: null == maxBuy
          ? _value.maxBuy
          : maxBuy // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WellnessEntityImplCopyWith<$Res>
    implements $WellnessEntityCopyWith<$Res> {
  factory _$$WellnessEntityImplCopyWith(_$WellnessEntityImpl value,
          $Res Function(_$WellnessEntityImpl) then) =
      __$$WellnessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imgName,
      String title,
      String category,
      int price,
      int minBuy,
      int maxBuy,
      String description});
}

/// @nodoc
class __$$WellnessEntityImplCopyWithImpl<$Res>
    extends _$WellnessEntityCopyWithImpl<$Res, _$WellnessEntityImpl>
    implements _$$WellnessEntityImplCopyWith<$Res> {
  __$$WellnessEntityImplCopyWithImpl(
      _$WellnessEntityImpl _value, $Res Function(_$WellnessEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgName = null,
    Object? title = null,
    Object? category = null,
    Object? price = null,
    Object? minBuy = null,
    Object? maxBuy = null,
    Object? description = null,
  }) {
    return _then(_$WellnessEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imgName: null == imgName
          ? _value.imgName
          : imgName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      minBuy: null == minBuy
          ? _value.minBuy
          : minBuy // ignore: cast_nullable_to_non_nullable
              as int,
      maxBuy: null == maxBuy
          ? _value.maxBuy
          : maxBuy // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WellnessEntityImpl implements _WellnessEntity {
  const _$WellnessEntityImpl(
      {this.id = 0,
      this.imgName = '',
      this.title = '',
      this.category = '',
      this.price = 0,
      this.minBuy = 0,
      this.maxBuy = 0,
      this.description = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String imgName;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final int minBuy;
  @override
  @JsonKey()
  final int maxBuy;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'WellnessEntity(id: $id, imgName: $imgName, title: $title, category: $category, price: $price, minBuy: $minBuy, maxBuy: $maxBuy, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WellnessEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imgName, imgName) || other.imgName == imgName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.minBuy, minBuy) || other.minBuy == minBuy) &&
            (identical(other.maxBuy, maxBuy) || other.maxBuy == maxBuy) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imgName, title, category,
      price, minBuy, maxBuy, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WellnessEntityImplCopyWith<_$WellnessEntityImpl> get copyWith =>
      __$$WellnessEntityImplCopyWithImpl<_$WellnessEntityImpl>(
          this, _$identity);
}

abstract class _WellnessEntity implements WellnessEntity {
  const factory _WellnessEntity(
      {final int id,
      final String imgName,
      final String title,
      final String category,
      final int price,
      final int minBuy,
      final int maxBuy,
      final String description}) = _$WellnessEntityImpl;

  @override
  int get id;
  @override
  String get imgName;
  @override
  String get title;
  @override
  String get category;
  @override
  int get price;
  @override
  int get minBuy;
  @override
  int get maxBuy;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$WellnessEntityImplCopyWith<_$WellnessEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
