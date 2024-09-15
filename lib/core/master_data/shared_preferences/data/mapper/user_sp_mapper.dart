// import 'package:payuung_pribadi/core/master_data/shared_preferences/data/models/address_model_sp.dart';
// import 'package:payuung_pribadi/core/master_data/shared_preferences/data/models/user_model_sp.dart';
// import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/entity/address_entity_sp.dart';
// import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/entity/user_entity_sp.dart';
// import 'package:payuung_pribadi/utils/ext/safe_null_object.dart';
//
// import '../../domain/entity/company_entity_sp.dart';
// import '../models/company_model_sp.dart';
//
// extension UserModelSpMapper on UserModelSp {
//   UserEntitySp toEntity() {
//     return UserEntitySp(
//     imgPath: imgPath.orEmpty(),
//     fullname: fullname.orEmpty(),
//     bornDate: bornDate.orEmpty(),
//     gender: gender.orEmpty(),
//     email: email.orEmpty(),
//     phoneNumber: phoneNumber.orEmpty(),
//     education: education.orEmpty(),
//     maritalStatus: maritalStatus.orEmpty(),
//     addressEntitySp: addressModelSp!.toEntity(),
//     companyEntitySp: companyModelSp!.toEntity(),
//     );
//   }
// }
//
// extension AddressModelSpMapper on AddressModelSp {
//   AddressEntitySp toEntity() {
//     return AddressEntitySp(
//     ktp: ktp.orEmpty(),
//     nik: nik.orEmpty(),
//     address: address.orEmpty(),
//     province: province.orEmpty(),
//     city: city.orEmpty(),
//     district: district.orEmpty(),
//     urbanVillage: urbanVillage.orEmpty(),
//     postalCode: postalCode.orEmpty(),
//     );
//   }
// }
//
// extension CompanyModelSpMapper on CompanyModelSp {
//   CompanyEntitySp toEntity() {
//     return CompanyEntitySp(
//      companyName: companyName.orEmpty(),
//      companyAddress: companyAddress.orEmpty(),
//      occupation: occupation.orEmpty(),
//      sourceIncome: sourceIncome.orEmpty(),
//      grossIncomePerYear: grossIncomePerYear.orEmpty(),
//      bankName: bankName.orEmpty(),
//      bankBranch: bankBranch.orEmpty(),
//      accountNumber: accountNumber.orEmpty(),
//      accountOwnerName: accountOwnerName.orEmpty(),
//     );
//   }
// }
//
// extension UserEntitySpMapper on UserEntitySp {
//   UserModelSp toModel() {
//     return UserModelSp(
//       imgPath: imgPath.orEmpty(),
//       fullname: fullname.orEmpty(),
//       bornDate: bornDate.orEmpty(),
//       gender: gender.orEmpty(),
//       email: email.orEmpty(),
//       phoneNumber: phoneNumber.orEmpty(),
//       education: education.orEmpty(),
//       maritalStatus: maritalStatus.orEmpty(),
//       addressModelSp: addressEntitySp.toModel(),
//       companyModelSp: companyEntitySp.toModel(),
//     );
//   }
// }
//
// extension AddressEntitySpMapper on AddressEntitySp {
//   AddressModelSp toModel() {
//     return AddressModelSp(
//       ktp: ktp.orEmpty(),
//       nik: nik.orEmpty(),
//       address: address.orEmpty(),
//       province: province.orEmpty(),
//       city: city.orEmpty(),
//       district: district.orEmpty(),
//       urbanVillage: urbanVillage.orEmpty(),
//       postalCode: postalCode.orEmpty(),
//     );
//   }
// }
//
// extension CompanyEntitySpMapper on CompanyEntitySp {
//   CompanyModelSp toModel() {
//     return CompanyModelSp(
//       companyName: companyName.orEmpty(),
//       companyAddress: companyAddress.orEmpty(),
//       occupation: occupation.orEmpty(),
//       sourceIncome: sourceIncome.orEmpty(),
//       grossIncomePerYear: grossIncomePerYear.orEmpty(),
//       bankName: bankName.orEmpty(),
//       bankBranch: bankBranch.orEmpty(),
//       accountNumber: accountNumber.orEmpty(),
//       accountOwnerName: accountOwnerName.orEmpty(),
//     );
//   }
// }
//
