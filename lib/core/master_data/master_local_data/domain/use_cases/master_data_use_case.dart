import 'package:either_dart/either.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/repositories/master_local_data_repository.dart';

import '../entities/address_entity.dart';
import '../entities/company_entity.dart';
import '../entities/user_entity.dart';
import '../entities/wellness_entity.dart';

class MasterDataUseCase {
  final MasterLocalDataRepository _masterLocalDataRepository;
  MasterDataUseCase(this._masterLocalDataRepository);

  Future<Either<Exception, bool>> register(UserEntity userEntity) async {
    return _masterLocalDataRepository.register(userEntity);
  }

  Future<Either<Exception, UserEntity>> getUser(UserEntity userEntity){
    return _masterLocalDataRepository.getUser(userEntity);
  }

  Future<Either<Exception, AddressEntity>> getAddress(int userId){
    return _masterLocalDataRepository.getAddress(userId);
  }

  Future<Either<Exception, bool>> insertAddress(AddressEntity addressEntity){
    return _masterLocalDataRepository.insertAddress(addressEntity);
  }

  Future<Either<Exception, bool>> updateAddress(AddressEntity addressEntity){
    return _masterLocalDataRepository.updateAddress(addressEntity);
  }

  Future<Either<Exception, CompanyEntity>> getCompany(int userId){
    return _masterLocalDataRepository.getCompany(userId);
  }

  Future<Either<Exception, bool>> insertCompany(CompanyEntity companyEntity){
    return _masterLocalDataRepository.insertCompany(companyEntity);
  }

  Future<Either<Exception, bool>> updateCompany(CompanyEntity companyEntity){
    return _masterLocalDataRepository.updateCompany(companyEntity);
  }

  Future<Either<Exception, List<WellnessEntity>>> getWellness(){
    return _masterLocalDataRepository.getWellness();
  }

  Future<void> insertWellness() async {
    return _masterLocalDataRepository.insertWellness();
  }
}