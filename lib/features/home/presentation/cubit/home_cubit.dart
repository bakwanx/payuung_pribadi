import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:payuung_pribadi/core/base/cubit/sync_emit.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/user_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/wellness_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/use_cases/master_data_use_case.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/use_cases/shared_preferences_use_case.dart';
import 'package:payuung_pribadi/features/home/domain/entities/category_item_entity.dart';
import 'package:payuung_pribadi/features/home/domain/entities/financial_item_entity.dart';
import 'package:payuung_pribadi/features/home/domain/use_cases/home_use_case.dart';

import '../../../../core/base/cubit/payuung_base_state.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> with SyncEmit<HomeState>{
  HomeCubit(this._homeUseCase, this._masterDataUseCase, this._sharedPreferencesUseCase) : super(HomeState());
  final HomeUseCase _homeUseCase;
  final MasterDataUseCase _masterDataUseCase;
  final SharedPreferencesUseCase _sharedPreferencesUseCase;

  Future<void> initData() async {
    syncEmit((_) => state.copyWith(loading: true));
    syncEmit((_) => state.copyWith(
      financialItemEntities: _homeUseCase.getListFinancialEntity(),
      categoryItemEntities: _homeUseCase.getListCategoryEntity(),
    ));
    await _wellness();
    await _userData();
  }

  Future<void> _wellness() async {
    final wellnessData = await _masterDataUseCase.getWellness();
    wellnessData.fold((l){
      syncEmit((_) => state.copyWith(loading: false, error: l));
    }, (r){
      syncEmit((_) => state.copyWith(wellnessEntities: r));
    });
  }

  Future<void> _userData() async {
    final getUserId = _sharedPreferencesUseCase.getUserId();
    int userId = -1;
    getUserId.fold((l){
      syncEmit((_) => state.copyWith(loading: false, error: l));
      return;
    }, (r){
      userId = r;
      }
    );
    final getUserData = await _masterDataUseCase.getUser(UserEntity(userId: userId));
    getUserData.fold((l){
      syncEmit((_) => state.copyWith(loading: false, error: l));
    }, (r){
      syncEmit((_) => state.copyWith(loading: false, userEntity: r));
    });
  }
}
