part of 'profile_cubit.dart';



@freezed
class ProfileState with _$ProfileState implements PayuungBaseState  {
  ProfileState._();

  factory ProfileState({
    Exception? error,
    @Default(UserEntity()) UserEntity userEntity,
    @Default(false) bool loading,
  }) = _ProfileState;

  @override
  // TODO: implement errorState
  Exception? get errorState => error;

  @override
  // TODO: implement isLoading
  bool? get isLoading => loading;

}
