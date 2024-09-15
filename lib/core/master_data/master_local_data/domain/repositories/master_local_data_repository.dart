import 'package:either_dart/either.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/address_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/company_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/user_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/wellness_entity.dart';

abstract class MasterLocalDataRepository {
  Future<Either<Exception, bool>> register(UserEntity userEntity);

  Future<Either<Exception, UserEntity>> getUser(UserEntity userEntity);

  Future<Either<Exception, AddressEntity>> getAddress(int userId);

  Future<Either<Exception, bool>> insertAddress(AddressEntity addressEntity);

  Future<Either<Exception, bool>> updateAddress(AddressEntity addressEntity);

  Future<Either<Exception, CompanyEntity>> getCompany(int userId);

  Future<Either<Exception, bool>> insertCompany(CompanyEntity companyEntity);

  Future<Either<Exception, bool>> updateCompany(CompanyEntity companyEntity);

  Future<Either<Exception, List<WellnessEntity>>> getWellness();

  Future<void> insertWellness();
}
