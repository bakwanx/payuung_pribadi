
import 'package:payuung_pribadi/features/auth/domain/repositories/auth_navigation_repository.dart';
import 'package:payuung_pribadi/features/base_home/domain/repositories/base_home_navigation_repository.dart';
import 'package:payuung_pribadi/routes/navigation/repositories/auth_navigation_repository_impl.dart';
import 'package:payuung_pribadi/routes/navigation/repositories/base_home_navigation_repository_impl.dart';
import 'package:payuung_pribadi/routes/navigation/repositories/on_boarding_navigation_repository_impl.dart';

import '../../di/dependency_injection.dart';
import '../../features/onboarding/domain/repositories/on_boarding_navigation_repository.dart';

class NavigationModule {
  Future<void> call() async {

    di.registerLazySingleton<OnBoardingNavigationRepository>(
            () => OnBoardingNavigationRepositoryImpl());
    di.registerLazySingleton<AuthNavigationRepository>(
            () => AuthNavigationRepositoryImpl());
    di.registerLazySingleton<BaseHomeNavigationRepository>(
            () => BaseHomeNavigationRepositoryImpl());
  }
}
