import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/models/user.dart';
import 'package:riverpod_learning/providers/apis_provider.dart';
import 'package:riverpod_learning/providers/counter_provider.dart';
import 'package:riverpod_learning/providers/dio_provider.dart';
import 'package:riverpod_learning/providers/users_provider_state.dart';

part 'users_provider.g.dart';

@Riverpod()
class UsersProvider extends _$UsersProvider {
  @override
  UserProviderState build() {
    Future.microtask(loadData);
    ref.listen(counterProvider, (previous, next) {
      if (next > 3) {
        state = UserProviderStateFail(errorMessage: 'Counter exceeded 3');
        return;
      }
      loadData();
    });
    return UserProviderStateLoading();
  }

  Future<void> loadData() async {
    state = UserProviderStateLoading();

    try {
      final dio = ref.read(dioProvider);
      final response = await dio.get<List<dynamic>>(ref.read(userApiProvider));

      if (response.statusCode == 200) {
        final users = (response.data ?? [])
            .map((json) => User.fromJson(json as Map<String, dynamic>))
            .toList();

        state = UserProviderStateSuccess(users: users);
        ref.keepAlive();
        return;
      }

      state = UserProviderStateFail(errorMessage: 'Failed to load data');
    } catch (error) {
      state = UserProviderStateFail(errorMessage: error.toString());
    }
  }
}
