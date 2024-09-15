import 'package:flutter_bloc/flutter_bloc.dart';
import 'payuung_base_state.dart';


mixin PayuungBaseListener<STATE extends PayuungBaseState> on BlocBase<STATE> {
  clearErrorState();
}