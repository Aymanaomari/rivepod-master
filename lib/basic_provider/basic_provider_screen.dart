import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/basic_provider/basic_provider.dart';

class BasicProviderScreen extends ConsumerWidget {
  const BasicProviderScreen({super.key});

  static String routePath = "/basic";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch<String>(autoDisProviderProvider);

    return Scaffold(body: Center(child: Text(name)));
  }
}
