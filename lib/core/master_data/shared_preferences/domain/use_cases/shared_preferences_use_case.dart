import 'package:either_dart/either.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/repositories/shared_preferences_repository.dart';

class SharedPreferencesUseCase {

  const SharedPreferencesUseCase(this._sharedPreferencesRepository);

  final SharedPreferencesRepository _sharedPreferencesRepository;

  bool getStatusFirstTime() {
    return _sharedPreferencesRepository.getStatusFirstTime();
  }

  bool getStatusLogin(){
    return _sharedPreferencesRepository.getStatusLogin();
  }

  Future<void> setUserId(int userId){
    return _sharedPreferencesRepository.setUserId(userId);
  }

  Either<Exception, int> getUserId(){
    return _sharedPreferencesRepository.getUserId();
  }

  Future<void> setLogOut(){
    return _sharedPreferencesRepository.setLogOut();
  }
}