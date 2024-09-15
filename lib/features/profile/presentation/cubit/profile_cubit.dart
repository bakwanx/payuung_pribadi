import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:payuung_pribadi/core/base/cubit/sync_emit.dart';

import '../../../../core/base/cubit/payuung_base_state.dart';
import '../../../../core/master_data/master_local_data/domain/entities/user_entity.dart';
import '../../../../core/master_data/master_local_data/domain/use_cases/master_data_use_case.dart';
import '../../../../core/master_data/shared_preferences/domain/use_cases/shared_preferences_use_case.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> with SyncEmit<ProfileState>{
  ProfileCubit(this._masterDataUseCase, this._sharedPreferencesUseCase) : super(ProfileState());

  final MasterDataUseCase _masterDataUseCase;
  final SharedPreferencesUseCase _sharedPreferencesUseCase;

  Future<void> getUserData() async {
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
