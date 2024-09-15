

abstract class PayuungBaseState {
  Exception? get errorState;
  bool? get isLoading;

  @override
  bool operator == (Object other){
    return other is PayuungBaseState &&
        other.errorState == errorState &&
        other.isLoading == isLoading;
  }

  @override
  int get hashCode {
    return errorState.hashCode ^ isLoading.hashCode;
  }
}
