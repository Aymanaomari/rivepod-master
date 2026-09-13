import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/provider_scope/model/todo.dart';
import 'package:riverpod_learning/provider_scope/todo_list_providers.dart';
import 'package:riverpod_learning/todo_list_tile.dart';

class TodoPage extends ConsumerStatefulWidget {
  const TodoPage({super.key});

  @override
  ConsumerState<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends ConsumerState<TodoPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addTodo() {
    final title = _controller.text.trim();
    if (title.isEmpty) return;

    ref
        .read(todoListProvider.notifier)
        .addTodo(Todo(id: DateTime.now().microsecondsSinceEpoch, title: title));
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todoListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              autofocus: true,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _addTodo(),
              decoration: InputDecoration(
                labelText: 'New todo',
                hintText: 'What needs to be done?',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: _addTodo,
                  icon: const Icon(Icons.add),
                  tooltip: 'Add todo',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: todos.isEmpty
                  ? const Center(child: Text('No todos yet'))
                  : ListView.separated(
                      itemCount: todos.length,
                      separatorBuilder: (_, _) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        return ProviderScope(
                          overrides: [
                            todoItemProvider.overrideWithValue(todos[index]),
                          ],
                          child: const TodoListTile(),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
