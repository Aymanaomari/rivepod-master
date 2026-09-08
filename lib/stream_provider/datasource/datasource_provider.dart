import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/stream_provider/datasource/counter_datasource.dart';

part 'datasource_provider.g.dart';

@Riverpod(keepAlive: false)
CounterDataSource counterDataSource(CounterDataSourceRef ref) {
  final dataSource = CounterDataSource();
  ref.onDispose(() {
    dataSource.dispose();
  });
  return dataSource;
}
