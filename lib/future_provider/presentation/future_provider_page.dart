import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/future_provider/presentation/user_details_page.dart';
import 'package:riverpod_learning/future_provider/users_provider.dart';

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  static String routePath = '/futureProvider';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsyncValue = ref.watch(usersListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Users List"),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(usersListProvider);
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SafeArea(
        child: usersAsyncValue.when(
          skipLoadingOnRefresh: false,
          data: (data) => RefreshIndicator(
            onRefresh: () => ref.refresh(usersListProvider.future),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final user = data[index];
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UserDetailsPage(userId: user.id),
                      ),
                    );
                  },
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 14),
                );
              },
            ),
          ),
          error: (error, stack) => Center(child: Text('Error: $error')),
          loading: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
