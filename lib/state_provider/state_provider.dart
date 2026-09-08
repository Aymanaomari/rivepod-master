import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_provider.g.dart';

final counterProvider = StateProvider<int>((Ref ref) {
  return 0;
});

@Riverpod(keepAlive: true)
String age(AgeRef ref) {
  final int age = ref.watch(counterProvider);
  return "my age is $age";
}
