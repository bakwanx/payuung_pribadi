import 'package:flutter/cupertino.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/data_sources/master_local_ds.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/data/repositories/master_local_data_repository_impl.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/repositories/master_local_data_repository.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/use_cases/master_data_use_case.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/data/data_sources/shared_preferences_ds.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/data/repositories/shared_preferences_repository_impl.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/repositories/shared_preferences_repository.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/use_cases/shared_preferences_use_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../di/dependency_injection.dart';
import '../network/network_info.dart';

class MasterDataModule {
  Future<void> call() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    di.registerLazySingleton(() => sharedPreferences);
    di.registerLazySingleton<SharedPreferencesDs>(
        () => SharedPreferencesDsImpl(di()));
    di.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(di()));
    di.registerLazySingleton<MasterLocalDs>(() => MasterLocalDsImpl());

    // repo
    di.registerLazySingleton<SharedPreferencesRepository>(
        () => SharedPreferencesRepositoryImpl(
          di(),
        ),
    );
    di.registerLazySingleton<MasterLocalDataRepository>(
        () =>MasterLocalDataRepositoryImpl(
          di(),
        ),
    );

    // usecase
    di.registerFactory<MasterDataUseCase>(
      () => MasterDataUseCase(
        di(),
      ),
    );
    di.registerFactory<SharedPreferencesUseCase>(
      () => SharedPreferencesUseCase(
         di(),
      ),
    );
  }
}
