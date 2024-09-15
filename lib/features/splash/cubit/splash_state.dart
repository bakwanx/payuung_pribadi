part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState implements PayuungBaseState{
  const SplashState._();

  const factory SplashState({
    Exception? error,
    @Default(false) isFirstTime,
    @Default(false) isLogin,
  }) = _SplashState;

  @override
  // TODO: implement errorState
  Exception? get errorState => error;

  @override
  // TODO: implement isLoading
  bool? get isLoading => false;
}