import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_entity.freezed.dart';

@freezed
class CompanyEntity with _$CompanyEntity{
  const factory CompanyEntity({
    @Default(0) int id,
    @Default(0) int userId,
    @Default('') String companyName,
    @Default('') String companyAddress,
    @Default('') String occupation,
    @Default('') String sourceIncome,
    @Default('') String grossIncomePerYear,
    @Default('') String bankName,
    @Default('') String bankBranch,
    @Default('') String accountNumber,
    @Default('') String accountOwnerName,
  }) = _CompanyEntity;
}
