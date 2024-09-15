import 'package:payuung_pribadi/features/home/domain/use_cases/home_use_case.dart';
import 'package:payuung_pribadi/features/home/presentation/cubit/home_cubit.dart';

import '../../di/dependency_injection.dart';

class HomeModule {
  Future<void> call() async {
    // USECASE
    di.registerFactory(() => HomeUseCase());
    //CUBIT
    di.registerFactory(() => HomeCubit(di(), di()));
  }
}