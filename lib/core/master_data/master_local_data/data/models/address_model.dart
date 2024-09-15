import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';

part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'ktp') String? ktp,
    @JsonKey(name: 'nik') String? nik,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'urbanVillage') String? urbanVillage,
    @JsonKey(name: 'postalCode') String? postalCode,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
