import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/async_notifier_provider/models/user.dart';
import 'package:riverpod_learning/async_notifier_provider/users_repository.dart';

class UsersListNotifier extends AsyncNotifier<List<User>> {
  @override
  Future<List<User>> build() async {
    // Implement the logic to fetch the list of users here
    // For example, you can use the UsersRepository to get the users
    final usersRepository = ref.read(userRepositoryProvider);
    return usersRepository.getUsers();
  }
}

final usersListProvider = AsyncNotifierProvider<UsersListNotifier, List<User>>(
  () {
    return UsersListNotifier();
  },
);
