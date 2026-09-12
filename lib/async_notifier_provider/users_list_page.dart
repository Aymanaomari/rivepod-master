import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/async_notifier_provider/users_list_provider.dart';

class UsersListPage extends ConsumerWidget {
  const UsersListPage({super.key});

  static const routePath = '/async-users';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(usersListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        actions: [
          IconButton(
            tooltip: 'Refresh users',
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.invalidate(usersListProvider),
          ),
        ],
      ),
      body: usersAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Failed to load users: $error'),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () => ref.invalidate(usersListProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
        data: (users) => ListView.separated(
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
