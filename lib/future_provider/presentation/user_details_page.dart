import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/future_provider/users_provider.dart';

class UserDetailsPage extends ConsumerWidget {
  const UserDetailsPage({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetails = ref.watch(userDetailsProvider(userId));

    return Scaffold(
      appBar: AppBar(title: const Text('User details')),
      body: userDetails.when(
        data: (user) => ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'User #${user.id}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Divider(height: 24),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.email_outlined),
                      title: const Text('Email'),
                      subtitle: Text(
                        user.email.isEmpty ? 'No email available' : user.email,
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.language_outlined),
                      title: const Text('Website'),
                      subtitle: Text(
                        user.website.isEmpty
                            ? 'No website available'
                            : user.website,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        error: (error, stackTrace) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Failed to load user details',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text('$error', textAlign: TextAlign.center),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ref.invalidate(userDetailsProvider(userId)),
                  child: const Text('Try again'),
                ),
              ],
            ),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
