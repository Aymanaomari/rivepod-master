import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_url_providers.g.dart';

@Riverpod(keepAlive: false)
String userApi(UserApiRef ref) {
  return "https://jsonplaceholder.typicode.com/users";
}
