// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoItemHash() => r'8f46b319b8acf309ec1396c13cee23f787795e83';

/// See also [todoItem].
@ProviderFor(todoItem)
final todoItemProvider = AutoDisposeProvider<Todo>.internal(
  todoItem,
  name: r'todoItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodoItemRef = AutoDisposeProviderRef<Todo>;
String _$todoListHash() => r'c68deaaf9c779bdebc52ded2468ceffe2569ef65';

/// See also [TodoList].
@ProviderFor(TodoList)
final todoListProvider =
    AutoDisposeNotifierProvider<TodoList, List<Todo>>.internal(
      TodoList.new,
      name: r'todoListProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$todoListHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$TodoList = AutoDisposeNotifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
