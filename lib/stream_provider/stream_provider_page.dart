import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/stream_provider/counter_provider.dart';

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({super.key});

  static String routePath = "/stream";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterStream = ref.watch(counterStreamProvider);
    return Scaffold(
      body: Center(
        child: counterStream.when(
          data: (count) => Text('Count: $count'),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}
