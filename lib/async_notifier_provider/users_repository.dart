import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/async_notifier_provider/models/user.dart';
import 'package:riverpod_learning/async_notifier_provider/providers/dio_provider.dart';

part 'users_repository.g.dart';

class UsersRepository {
  final Dio dio;

  UsersRepository({required this.dio});

  Future<List<User>> getUsers() async {
    final response = await dio.get("/users");
    if (response.statusCode == 200 && response.data != null) {
      List<User> users = (response.data as List)
          .map((e) => User.fromJson(e))
          .toList();
      return users;
    } else {
      throw Exception('Failed to load users');
    }
  }
}

@Riverpod()
UsersRepository userRepository(UserRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return UsersRepository(dio: dio);
}
