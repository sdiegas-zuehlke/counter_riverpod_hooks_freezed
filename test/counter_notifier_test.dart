import 'package:flutter_riverpod_blueprint/data/models/counter.dart';
import 'package:flutter_riverpod_blueprint/data/notifiers/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  group('CounterNotifier Tests', () {
    final testProvider = StateNotifierProvider<CounterNotifier, Counter>(
      (ref) => CounterNotifier(),
    );

    test('Init Counter', () async {
      final container = ProviderContainer(
        overrides: [],
      );
      final counterNotifier = container.read(testProvider.notifier);

      expect(counterNotifier.debugState, const Counter(count: 0));
    });

    test('Increment Counter', () async {
      final container = ProviderContainer(
        overrides: [],
      );
      final counterNotifier = container.read(testProvider.notifier);

      expect(counterNotifier.debugState, const Counter(count: 0));

      counterNotifier.increment();

      expect(counterNotifier.debugState, const Counter(count: 1));
    });
  });
}
