import 'package:payuung_pribadi/features/onboarding/domain/use_cases/on_board_use_case.dart';
import 'package:payuung_pribadi/features/onboarding/presentation/cubit/on_boarding_cubit.dart';

import '../../di/dependency_injection.dart';

class OnBoardingModule {
  Future<void> call() async {
    di.registerLazySingleton<OnBoardingUseCase>(
      () => OnBoardingUseCase(),
    );
    //CUBIT
    di.registerFactory(() => OnBoardingCubit(di()));
  }
}
