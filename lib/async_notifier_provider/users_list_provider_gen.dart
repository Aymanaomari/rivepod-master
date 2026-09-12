import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/async_notifier_provider/models/user.dart';
import 'package:riverpod_learning/async_notifier_provider/users_repository.dart';

part 'users_list_provider_gen.g.dart';

@Riverpod(keepAlive: true)
class UsersList extends _$UsersList {
  @override
  Future<List<User>> build() async {
    // Implement the logic to fetch the list of users here
    // For example, you can use the UsersRepository to get the users
    final usersRepository = ref.watch(userRepositoryProvider);
    return usersRepository.getUsers();
  }
}
