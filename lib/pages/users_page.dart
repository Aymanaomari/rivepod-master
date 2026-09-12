import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/providers/counter_provider.dart';
import 'package:riverpod_learning/providers/users_provider.dart';
import 'package:riverpod_learning/providers/users_provider_state.dart';

class UsersPage extends ConsumerStatefulWidget {
  const UsersPage({super.key});

  static const routePath = '/users';

  @override
  ConsumerState<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends ConsumerState<UsersPage> {
  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(counterProvider);
    final userState = ref.watch(usersProviderProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Users ($counter)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(counterProvider.notifier).increment();
            },
          ),
        ],
      ),
      body: userState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        fail: (errorMessage) => Center(child: Text(errorMessage)),
        success: (users) => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: users.length,
          separatorBuilder: (_, index) => const Divider(),
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              leading: CircleAvatar(child: Text('${user.id}')),
              title: Text(user.name),
              subtitle: Text('${user.username}\n${user.email}'),
              isThreeLine: true,
            );
          },
        ),
      ),
    );
  }
}
