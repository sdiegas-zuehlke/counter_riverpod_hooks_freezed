import 'package:flutter_riverpod_blueprint/data/models/counter.dart';
import 'package:flutter_riverpod_blueprint/data/notifiers/counter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final provider = StateNotifierProvider<CounterNotifier, Counter>(
  (ref) => CounterNotifier(),
);
