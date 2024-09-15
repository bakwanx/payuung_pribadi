// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: (json['userId'] as num?)?.toInt(),
      imgPath: json['imgPath'] as String?,
      fullname: json['fullname'] as String?,
      bornDate: json['bornDate'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      education: json['education'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'imgPath': instance.imgPath,
      'fullname': instance.fullname,
      'bornDate': instance.bornDate,
      'gender': instance.gender,
      'email': instance.email,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'education': instance.education,
      'maritalStatus': instance.maritalStatus,
    };
