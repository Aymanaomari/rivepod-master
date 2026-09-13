import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  String get props =>
      """
    hasData: $hasValue,
    hasError: $hasError,
    isLoading: $isLoading,
    isRefreshing: $isRefreshing,
  """;
}
