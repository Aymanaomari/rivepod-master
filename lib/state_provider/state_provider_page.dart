import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/state_provider/state_provider.dart';

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  static const routePath = "/state-provider";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final age = ref.watch(ageProvider);

    return Scaffold(
      body: Center(child: Text(age)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
