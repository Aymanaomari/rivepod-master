import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/future_provider/api_url_providers.dart';
import 'package:riverpod_learning/future_provider/repository/users_repository.dart';

part 'users_repository_provider.g.dart';

@Riverpod(keepAlive: false)
UserRepository userRepository(UserRepositoryRef ref) {
  final userApiUrl = ref.watch(userApiProvider);
  return UserRepository(usersApiUrl: userApiUrl);
}
