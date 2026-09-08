import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basic_provider.g.dart';

@Riverpod(keepAlive: true)
String basicProvider(BasicProviderRef ref) {
  return "Hello Riverpod";
}

// // Auto Dispose Provider
// @Riverpod(keepAlive: false)
// String autoDisProvider(AutoDisProviderRef ref) {
//   ref.onDispose(() {
//     print("AutoDisProvider has been disposed");
//   });
//   return "Hello AutoDispose Riverpod";
// }

// /// Family Provider
// @Riverpod(keepAlive: true)
// String familyProvider(FamilyProviderRef ref, {required String name}) {
//   return "Hello $name";
// }
