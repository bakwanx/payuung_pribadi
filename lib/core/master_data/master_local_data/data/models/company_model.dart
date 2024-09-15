import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';

part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel{
  const factory CompanyModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'companyName') String? companyName,
    @JsonKey(name: 'companyAddress') String? companyAddress,
    @JsonKey(name: 'occupation') String? occupation,
    @JsonKey(name: 'sourceIncome') String? sourceIncome,
    @JsonKey(name: 'grossIncomePerYear') String? grossIncomePerYear,
    @JsonKey(name: 'bankName') String? bankName,
    @JsonKey(name: 'bankBranch') String? bankBranch,
    @JsonKey(name: 'accountNumber') String? accountNumber,
    @JsonKey(name: 'accountOwnerName') String? accountOwnerName,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
