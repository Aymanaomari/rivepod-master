import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/provider_scope/todo_list_providers.dart';

class TodoListTile extends ConsumerWidget {
  const TodoListTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todo = ref.watch(todoItemProvider);
    debugPrint(todo.title);

    return ListTile(
      leading: const Icon(Icons.check_box_outline_blank),
      title: Text(todo.title),
    );
  }
}
