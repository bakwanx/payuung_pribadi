import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:payuung_pribadi/core/master_data/master_data_module.dart';
import 'package:payuung_pribadi/features/base_home/base_home_module.dart';
import 'package:payuung_pribadi/features/onboarding/on_boarding_module.dart';
import 'package:payuung_pribadi/features/splash/splash_module.dart';

import '../features/auth/auth_module.dart';
import '../features/home/home_module.dart';
import '../routes/navigation/navigation_module.dart';

final di = GetIt.instance;

Future<void> initDependency() async {
  di.registerLazySingleton(() => Connectivity());

  final MasterDataModule _masterDataModule = MasterDataModule();
  final SplashModule _splashModule = SplashModule();
  final OnBoardingModule _onBoardingModule = OnBoardingModule();
  final NavigationModule _navigationModule = NavigationModule();
  final AuthModule _authModule = AuthModule();
  final HomeModule _homeModule = HomeModule();
  final BaseHomeModule _baseHomeModule = BaseHomeModule();

  await _navigationModule();
  await _masterDataModule();
  await _splashModule();
  await _onBoardingModule();
  await _authModule();
  await _homeModule();
  await _baseHomeModule();
}
