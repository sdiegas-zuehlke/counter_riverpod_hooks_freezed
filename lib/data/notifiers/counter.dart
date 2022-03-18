import 'package:flutter_riverpod_blueprint/data/models/counter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(_initialValue);

  static const _initialValue = Counter(count: 0);

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
