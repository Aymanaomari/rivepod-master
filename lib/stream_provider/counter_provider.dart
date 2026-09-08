import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/stream_provider/datasource/datasource_provider.dart';

part 'counter_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<int> counterStream(CounterStreamRef ref) {
  final counterDataSource = ref.watch(counterDataSourceProvider);
  return counterDataSource.stream;
}
