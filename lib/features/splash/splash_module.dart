import 'package:payuung_pribadi/features/splash/cubit/splash_cubit.dart';

import '../../di/dependency_injection.dart';

class SplashModule {
  Future<void> call() async {
    //CUBIT
    di.registerFactory(() => SplashCubit(di(), di()));
  }
}