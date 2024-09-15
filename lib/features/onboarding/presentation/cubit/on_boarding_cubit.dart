import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/on_board_entity.dart';
import '../../domain/use_cases/on_board_use_case.dart';

part 'on_boarding_state.dart';
part 'on_boarding_cubit.freezed.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit(this._onBoardUseCase) : super(OnBoardingState());
  OnBoardingUseCase _onBoardUseCase;

  initBoardingData() {
    emit(state.copyWith(onBoardingEntities: _onBoardUseCase.call()));
  }

  void onChangePage(int index) {
    emit(state.copyWith(pageIndex: index));
  }
}
