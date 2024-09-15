import 'package:payuung_pribadi/features/auth/login/presentation/cubit/login_cubit.dart';

import '../../di/dependency_injection.dart';

class AuthModule {
  Future<void> call() async {
    //CUBIT
    di.registerFactory(() => LoginCubit(di(), di()));
  }
}