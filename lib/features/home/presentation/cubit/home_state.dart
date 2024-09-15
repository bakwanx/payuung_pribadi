part of 'home_cubit.dart';


@freezed
class HomeState with _$HomeState implements PayuungBaseState  {
  HomeState._();

  factory HomeState({
    Exception? error,
    @Default([]) List<FinancialItemEntity> financialItemEntities,
    @Default([]) List<CategoryItemEntity> categoryItemEntities,
    @Default([]) List<WellnessEntity> wellnessEntities,
    @Default(false) bool loading,
  }) = _SplashState;

  @override
  // TODO: implement errorState
  Exception? get errorState => error;

  @override
  // TODO: implement isLoading
  bool? get isLoading => loading;

}

