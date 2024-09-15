import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:payuung_pribadi/core/base/cubit/sync_emit.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/entities/wellness_entity.dart';
import 'package:payuung_pribadi/core/master_data/master_local_data/domain/use_cases/master_data_use_case.dart';
import 'package:payuung_pribadi/features/home/domain/entities/category_item_entity.dart';
import 'package:payuung_pribadi/features/home/domain/entities/financial_item_entity.dart';
import 'package:payuung_pribadi/features/home/domain/use_cases/home_use_case.dart';

import '../../../../core/base/cubit/payuung_base_state.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> with SyncEmit<HomeState>{
  HomeCubit(this._homeUseCase, this._masterDataUseCase) : super(HomeState());
  final HomeUseCase _homeUseCase;
  final MasterDataUseCase _masterDataUseCase;

  Future<void> initData() async {
    syncEmit((_) => state.copyWith(loading: true));
    syncEmit((_) => state.copyWith(
      financialItemEntities: _homeUseCase.getListFinancialEntity(),
      categoryItemEntities: _homeUseCase.getListCategoryEntity(),
    ));
    await wellness();
  }

  Future<void> wellness() async {
    final wellnessData = await _masterDataUseCase.getWellness();
    wellnessData.fold((l){
      syncEmit((_) => state.copyWith(loading: false, error: l));
    }, (r){
      syncEmit((_) => state.copyWith(loading: false, wellnessEntities: r));
    });
  }
}
