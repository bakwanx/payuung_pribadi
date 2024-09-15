import 'package:either_dart/either.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/entity/user_entity_sp.dart';

abstract class SharedPreferencesRepository {
  bool getStatusFirstTime();

  bool getStatusLogin();

  Future<void> setUserId(int userId);

  Either<Exception, int> getUserId();

  Future<void> setLogOut();
}