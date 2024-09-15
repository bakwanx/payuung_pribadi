import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/wellness_entity.dart';
import 'package:payuung_pribadi/utils/ext/safe_null_object.dart';

import '../../domain/entities/address_entity.dart';
import '../../domain/entities/company_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../models/address_model.dart';
import '../models/company_model.dart';
import '../models/user_model.dart';
import '../models/wellness_model.dart';

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      userId: userId.orEmpty(),
      imgPath: imgPath.orEmpty(),
      fullname: fullname.orEmpty(),
      bornDate: bornDate.orEmpty(),
      gender: gender.orEmpty(),
      email: email.orEmpty(),
      password: password.orEmpty(),
      phoneNumber: phoneNumber.orEmpty(),
      education: education.orEmpty(),
      maritalStatus: maritalStatus.orEmpty(),
    );
  }
}

extension AddressModelMapper on AddressModel {
  AddressEntity toEntity() {
    return AddressEntity(
      id: id.orEmpty(),
      userId: userId.orEmpty(),
      ktp: ktp.orEmpty(),
      nik: nik.orEmpty(),
      address: address.orEmpty(),
      province: province.orEmpty(),
      city: city.orEmpty(),
      district: district.orEmpty(),
      urbanVillage: urbanVillage.orEmpty(),
      postalCode: postalCode.orEmpty(),
    );
  }
}

extension CompanyModelMapper on CompanyModel {
  CompanyEntity toEntity() {
    return CompanyEntity(
      id: id.orEmpty(),
      userId: userId.orEmpty(),
      companyName: companyName.orEmpty(),
      companyAddress: companyAddress.orEmpty(),
      occupation: occupation.orEmpty(),
      sourceIncome: sourceIncome.orEmpty(),
      grossIncomePerYear: grossIncomePerYear.orEmpty(),
      bankName: bankName.orEmpty(),
      bankBranch: bankBranch.orEmpty(),
      accountNumber: accountNumber.orEmpty(),
      accountOwnerName: accountOwnerName.orEmpty(),
    );
  }
}

extension WellnessModelMapper on WellnessModel {
  WellnessEntity toEntity() {
    return WellnessEntity(
      id: id.orEmpty(),
      imgName: imgName.orEmpty(),
      title: title.orEmpty(),
      category: category.orEmpty(),
      price: price.orEmpty(),
      minBuy: minBuy.orEmpty(),
      maxBuy: maxBuy.orEmpty(),
      description: description.orEmpty(),
    );
  }
}

extension UserEntityMapper on UserEntity {
  UserModel toModel() {
    return UserModel(
      imgPath: imgPath.orEmpty(),
      fullname: fullname.orEmpty(),
      bornDate: bornDate.orEmpty(),
      gender: gender.orEmpty(),
      email: email.orEmpty(),
      password: password.orEmpty(),
      phoneNumber: phoneNumber.orEmpty(),
      education: education.orEmpty(),
      maritalStatus: maritalStatus.orEmpty(),
    );
  }
}

extension AddressEntityMapper on AddressEntity {
  AddressModel toModel() {
    return AddressModel(
      userId: userId.orEmpty(),
      ktp: ktp.orEmpty(),
      nik: nik.orEmpty(),
      address: address.orEmpty(),
      province: province.orEmpty(),
      city: city.orEmpty(),
      district: district.orEmpty(),
      urbanVillage: urbanVillage.orEmpty(),
      postalCode: postalCode.orEmpty(),
    );
  }
}

extension CompanyEntityMapper on CompanyEntity {
  CompanyModel toModel() {
    return CompanyModel(
      userId: userId.orEmpty(),
      companyName: companyName.orEmpty(),
      companyAddress: companyAddress.orEmpty(),
      occupation: occupation.orEmpty(),
      sourceIncome: sourceIncome.orEmpty(),
      grossIncomePerYear: grossIncomePerYear.orEmpty(),
      bankName: bankName.orEmpty(),
      bankBranch: bankBranch.orEmpty(),
      accountNumber: accountNumber.orEmpty(),
      accountOwnerName: accountOwnerName.orEmpty(),
    );
  }
}
