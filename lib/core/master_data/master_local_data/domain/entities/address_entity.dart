import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';

@freezed
class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('') String ktp,
    @Default('') String nik,
    @Default('') String address,
    @Default('') String province,
    @Default('') String city,
    @Default('') String district,
    @Default('') String urbanVillage,
    @Default('') String postalCode,
  }) = _AddressEntity;
}
