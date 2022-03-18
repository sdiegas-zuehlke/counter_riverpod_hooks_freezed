import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';
part 'counter.g.dart';

@freezed

/// [Counter] data model
class Counter with _$Counter {
  /// Creates [Counter]
  const factory Counter({
    required final int count,
  }) = _Counter;

  const Counter._();

  /// Create [Counter] from JSON object.
  factory Counter.fromJson(final Map<String, dynamic> json) =>
      _$CounterFromJson(json);
}
