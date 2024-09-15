// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      companyName: json['companyName'] as String?,
      companyAddress: json['companyAddress'] as String?,
      occupation: json['occupation'] as String?,
      sourceIncome: json['sourceIncome'] as String?,
      grossIncomePerYear: json['grossIncomePerYear'] as String?,
      bankName: json['bankName'] as String?,
      bankBranch: json['bankBranch'] as String?,
      accountNumber: json['accountNumber'] as String?,
      accountOwnerName: json['accountOwnerName'] as String?,
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'companyName': instance.companyName,
      'companyAddress': instance.companyAddress,
      'occupation': instance.occupation,
      'sourceIncome': instance.sourceIncome,
      'grossIncomePerYear': instance.grossIncomePerYear,
      'bankName': instance.bankName,
      'bankBranch': instance.bankBranch,
      'accountNumber': instance.accountNumber,
      'accountOwnerName': instance.accountOwnerName,
    };
