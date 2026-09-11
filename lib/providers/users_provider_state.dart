import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_learning/models/user.dart';

part 'users_provider_state.freezed.dart';

enum UserProviderStatus { idle, loading, success, fail }

@freezed
abstract class UserProviderState with _$UserProviderState {
  const factory UserProviderState({
    required UserProviderStatus status,
    @Default([]) List<User> users,
    @Default('') String errorMessage,
  }) = _UserProviderState;

  factory UserProviderState.initial() {
    return UserProviderState(
      status: UserProviderStatus.idle,
      users: [],
      errorMessage: '',
    );
  }
}
