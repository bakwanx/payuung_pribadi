import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchronized/synchronized.dart';

mixin SyncEmit<State> on BlocBase<State> {
  final _lock = Lock();

  /// execute anything within cubit synchronized
  Future<T> execSync<T>(FutureOr<T> Function() action) {
    return _lock.synchronized(action);
  }

  /// update cubit synchronized
  Future<void> syncEmit(State Function(State state) transform) {
    return execSync(() async {
      if (!isClosed) emit(transform(state));
    });
  }
}
