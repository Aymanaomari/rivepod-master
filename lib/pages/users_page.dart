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
      body: switch (userState.status) {
        UserProviderStatus.idle || UserProviderStatus.loading => const Center(
          child: CircularProgressIndicator(),
        ),
        UserProviderStatus.fail => Center(child: Text(userState.errorMessage)),
        UserProviderStatus.success => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: userState.users.length,
          separatorBuilder: (_, index) => const Divider(),
          itemBuilder: (context, index) {
            final user = userState.users[index];
            return ListTile(
              leading: CircleAvatar(child: Text('${user.id}')),
              title: Text(user.name),
              subtitle: Text('${user.username}\n${user.email}'),
              isThreeLine: true,
            );
          },
        ),
      },
    );
  }
}
