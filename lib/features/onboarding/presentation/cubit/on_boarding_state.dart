part of 'on_boarding_cubit.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  OnBoardingState._();

  factory OnBoardingState({
    @Default([]) List<OnBoardEntity> onBoardingEntities,
    @Default(0) int pageIndex,
  }) = _SplashState;

}
