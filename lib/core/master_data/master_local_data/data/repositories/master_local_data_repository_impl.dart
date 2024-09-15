import 'dart:convert';

import 'package:either_dart/src/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/models/user_model.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/models/wellness_model.dart';
import 'package:payuung_pribadi/utils/error/error_exception.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/data_sources/master_local_ds.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/mapper/master_local_data_mapper.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/address_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/company_entity.dart';

import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/user_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/wellness_entity.dart';

import '../../domain/repositories/master_local_data_repository.dart';

class MasterLocalDataRepositoryImpl implements MasterLocalDataRepository {
  final MasterLocalDs _masterLocalDs;
  MasterLocalDataRepositoryImpl(this._masterLocalDs);

  @override
  Future<Either<Exception, UserEntity>> getUser(UserEntity userEntity) async {
    try {
      final result = await _masterLocalDs.getUser(userEntity.toModel());
      return Right(result.toEntity());
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, bool>> register(UserEntity userEntity) async {
    try {
      final jsonData = await rootBundle.loadString(
        'assets/json/user_dummy.json',
      );
      final data = await jsonDecode(jsonData);
      await _masterLocalDs.register(UserModel.fromJson(data));
      return Right(true);

      // TODO: implement after register feature has finished
      // final result = await _masterLocalDs.register(userEntity.toModel());
      // return Right(result);
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, bool>> insertAddress(AddressEntity addressEntity) async {
    try {
      final result = await _masterLocalDs.insertAddress(addressEntity.toModel());
      return Right(result);
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, bool>> insertCompany(CompanyEntity companyEntity)async {
    try {
      final result = await _masterLocalDs.insertCompany(companyEntity.toModel());
      return Right(result);
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, bool>> updateAddress(AddressEntity addressEntity) async{
    try {
      final result = await _masterLocalDs.updateAddress(addressEntity.toModel());
      return Right(result);
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, bool>> updateCompany(CompanyEntity companyEntity) async {
    try {
      final result = await _masterLocalDs.updateCompany(companyEntity.toModel());
      return Right(result);
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, AddressEntity>> getAddress(int userId) async {
    try {
      final result = await _masterLocalDs.getAddress(userId);
      return Right(result.toEntity());
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, CompanyEntity>> getCompany(int userId) async {
    try {
      final result = await _masterLocalDs.getCompany(userId);
      return Right(result.toEntity());
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<Either<Exception, List<WellnessEntity>>> getWellness() async {
    try {
      final result = await _masterLocalDs.getWellness();
      return Right(result.map((data) => data.toEntity()).toList());
    } on LocalException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  Future<void> insertWellness() async {
    final jsonData = await rootBundle.loadString(
      'assets/json/wellness.json',
    );
    List dataList = await jsonDecode(jsonData);
    List<WellnessModel> list = <WellnessModel>[];

    for (var item in dataList) {
      final wellness = WellnessModel.fromJson(item);
      list.add(wellness);
    }
    _masterLocalDs.insertWellness(list);
  }

}