import 'package:payuung_pribadi/features/profile/presentation/cubit/profile_cubit.dart';

import '../../di/dependency_injection.dart';

class ProfileModule {
  Future<void> call() async {
    //CUBIT
    di.registerFactory(() => ProfileCubit(di(), di()));
  }
}