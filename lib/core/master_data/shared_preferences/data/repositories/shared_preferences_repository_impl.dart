import 'package:either_dart/src/either.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/data/data_sources/shared_preferences_ds.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/entity/user_entity_sp.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/repositories/shared_preferences_repository.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/data/mapper/user_sp_mapper.dart';
import 'package:payuung_pribadi/utils/error/error_exception.dart';

class SharedPreferencesRepositoryImpl implements SharedPreferencesRepository{
  final SharedPreferencesDs _sharedPreferencesDs;
  SharedPreferencesRepositoryImpl(this._sharedPreferencesDs);

  @override
  bool getStatusFirstTime() {
    return _sharedPreferencesDs.getStatusFirstTime();
  }

  @override
  bool getStatusLogin() {
    return _sharedPreferencesDs.getStatusLogin();
  }


  @override
  Future<void> setLogOut() {
    return _sharedPreferencesDs.setLogOut();
  }

  @override
  Future<void> setUserId(int userId) {
    return _sharedPreferencesDs.setUserId(userId);
  }

  @override
  Either<Exception, int> getUserId() {
    try{
      return Right(_sharedPreferencesDs.getUserId());
    } on LocalException catch(e){
      return Left(e);
    } catch (e){
      return Left(Exception());
    }

  }



}