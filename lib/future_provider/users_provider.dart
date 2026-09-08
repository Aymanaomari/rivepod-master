import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/future_provider/models/user.dart';
import 'package:riverpod_learning/future_provider/repository/users_repository_provider.dart';

// final usersProvider = FutureProvider.autoDispose<List<User>>((ref) async {
//   final userRepository = ref.watch(userRepositoryProvider);
//   return userRepository.getUsers();
// });

part 'users_provider.g.dart';

@Riverpod(keepAlive: false)
FutureOr<List<User>> usersList(UsersListRef ref) async {
  ref.onDispose(() {
    print("usersList has been disposed");
  });

  final userRepository = ref.watch(userRepositoryProvider);
  final users = await userRepository.getUsers();

  // if (users.isNotEmpty) {
  //   ref.keepAlive();
  // }

  return users;
}

final userDetailsProvider = FutureProvider.family<User, int>((ref, id) {
  ref.onDispose(() {
    print("userDetails with id:$id has been disposed");
  });
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.getUserWithId(id);
});
