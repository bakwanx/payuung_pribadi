part of 'base_home_cubit.dart';

@freezed
class BaseHomeState with _$BaseHomeState implements PayuungBaseState  {
  BaseHomeState._();

  factory BaseHomeState({
    Exception? error,
    @Default(0) int indexPage,
    @Default([]) List<Widget> pages,
    @Default([]) List<BottomNavMenuEntity> bottomNavMenuEntities,
    @Default(false) bool loading,
  }) = _SplashState;

  @override
  // TODO: implement errorState
  Exception? get errorState => error;

  @override
  // TODO: implement isLoading
  bool? get isLoading => loading;

}

