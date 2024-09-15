part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState implements PayuungBaseState {
  const LoginState._();

  const factory LoginState({
    Exception? error,
    @Default(false) bool isSuccessLogin,
    @Default(false) bool loading,
    @Default(false) bool isActiveButtonEmail,
    @Default(false) bool isActiveButtonPassword,
  }) = _LoginState;

  @override
  // TODO: implement errorState
  Exception? get errorState => error;

  @override
  // TODO: implement isLoading
  bool? get isLoading => loading;
}
