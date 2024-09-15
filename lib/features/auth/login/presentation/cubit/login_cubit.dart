import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:payuung_pribadi/core/base/cubit/payuung_base_listener.dart';
import 'package:payuung_pribadi/core/base/cubit/sync_emit.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/user_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/use_cases/master_data_use_case.dart';
import 'package:payuung_pribadi/core/master_data/shared_preferences/domain/use_cases/shared_preferences_use_case.dart';

import '../../../../../core/base/cubit/payuung_base_state.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> with SyncEmit<LoginState>, PayuungBaseListener {
  LoginCubit(this._masterDataUseCase, this._sharedPreferencesUseCase) : super(const LoginState());
  final MasterDataUseCase _masterDataUseCase;
  final SharedPreferencesUseCase _sharedPreferencesUseCase;

  void onChangeEmailTextFormField(String value){
    if(value.isNotEmpty){
      emit(state.copyWith(isActiveButtonEmail: true));
    } else {
      emit(state.copyWith(isActiveButtonEmail: false));
    }
  }

  void onChangePasswordTextFormField(String value){
    if(value.isNotEmpty){
      emit(state.copyWith(isActiveButtonPassword: true));
    } else {
      emit(state.copyWith(isActiveButtonPassword: false));
    }
  }

  Future<void> login(String email, String password) async {
    syncEmit((_) => state.copyWith(loading: true));
    final result = await _masterDataUseCase.getUser(UserEntity(
      email: email,
      password: password
    ));
    result.fold((l){
      syncEmit((_) => state.copyWith(error: l, loading: false));
    }, (r){
      _sharedPreferencesUseCase.setUserId(r.userId);
      syncEmit((_) => state.copyWith(isSuccessLogin: true, loading: false));
    });
  }

  @override
  clearErrorState() {
    syncEmit((_) => state.copyWith(error: null));
  }
}
