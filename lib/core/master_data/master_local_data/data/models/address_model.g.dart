// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      ktp: json['ktp'] as String?,
      nik: json['nik'] as String?,
      address: json['address'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      urbanVillage: json['urbanVillage'] as String?,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'ktp': instance.ktp,
      'nik': instance.nik,
      'address': instance.address,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'urbanVillage': instance.urbanVillage,
      'postalCode': instance.postalCode,
    };
