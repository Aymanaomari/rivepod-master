import 'package:dio/dio.dart';

import 'package:riverpod_learning/future_provider/models/user.dart';

class UserRepository {
  final String usersApiUrl;
  final Dio _dio;

  UserRepository({required this.usersApiUrl}) : _dio = Dio();

  Future<List<User>> getUsers() async {
    final response = await _dio.get(usersApiUrl);
    final List<dynamic> data = response.data;
    return data.map((json) => User.fromJson(json)).toList();
  }

  Future<User> getUserWithId(int id) async {
    final response = await _dio.get('$usersApiUrl?id=$id');
    List<dynamic> data = response.data;
    final user = User.fromJson(data.first);
    return user;
  }
}
