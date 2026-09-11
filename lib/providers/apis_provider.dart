import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'apis_provider.g.dart';

@Riverpod(keepAlive: true)
String userApi(UserApiRef ref) {
  return "https://jsonplaceholder.typicode.com/users";
}

@Riverpod(keepAlive: true)
String postApi(PostApiRef ref) {
  return "https://jsonplaceholder.typicode.com/posts";
}
