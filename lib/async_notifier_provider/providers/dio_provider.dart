import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  // You can configure the Dio instance here if needed, for example:
  return Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));
}
