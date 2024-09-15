import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payuung_pribadi/core/base/cubit/payuung_base_listener.dart';
import 'package:payuung_pribadi/core/base/cubit/payuung_base_state.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/user_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/use_cases/master_data_use_case.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/use_cases/shared_preferences_use_case.dart';
import 'package:payuung_pribadi/utils/error/error_exception.dart';

import '../../../core/base/cubit/sync_emit.dart';

part 'splash_state.dart';

part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState>
    with SyncEmit<SplashState>, PayuungBaseListener {
  SplashCubit(
    this._masterDataUseCase,
    this._sharedPreferencesUseCase,
  ) : super(const SplashState());
  MasterDataUseCase _masterDataUseCase;
  SharedPreferencesUseCase _sharedPreferencesUseCase;

  initData() async {
    Timer(const Duration(seconds: 2), () {
      if (_sharedPreferencesUseCase.getStatusFirstTime()) {
        _masterDataUseCase.insertWellness();
        insertDummyData();
        syncEmit(
          (_) => state.copyWith(isFirstTime: true),
        );
        return;
      } else {
        if(_sharedPreferencesUseCase.getStatusLogin()){
          syncEmit(
                (_) => state.copyWith(isLogin: true),
          );
          return;
        }else {
          syncEmit(
                (_) => state.copyWith(isLogin: false),
          );
        }
      }
    });
  }

  void insertDummyData(){
    _masterDataUseCase.register(UserEntity());
  }

  @override
  clearErrorState() {
    emit(state.copyWith(error: null));
  }
}
