// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wellness_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WellnessModelImpl _$$WellnessModelImplFromJson(Map<String, dynamic> json) =>
    _$WellnessModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imgName: json['imgName'] as String?,
      title: json['title'] as String?,
      category: json['category'] as String?,
      price: (json['price'] as num?)?.toInt(),
      minBuy: (json['minBuy'] as num?)?.toInt(),
      maxBuy: (json['maxBuy'] as num?)?.toInt(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$WellnessModelImplToJson(_$WellnessModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgName': instance.imgName,
      'title': instance.title,
      'category': instance.category,
      'price': instance.price,
      'minBuy': instance.minBuy,
      'maxBuy': instance.maxBuy,
      'description': instance.description,
    };
