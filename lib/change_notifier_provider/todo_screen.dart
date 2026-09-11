import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/change_notifier_provider/todo_provider.dart';

class TodoScreen extends ConsumerStatefulWidget {
  const TodoScreen({super.key});

  static const routePath = '/todo';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoScreenState();
}

class _TodoScreenState extends ConsumerState<TodoScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final _snackbar = SnackBar(content: Text("You should enter a value"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          final todoValue = _controller.text;
          if (todoValue.isNotEmpty) {
            ref.read(todoNotifierProvider).addTodo(todoValue);
            return;
          }
          ScaffoldMessenger.of(context).showSnackBar(_snackbar);
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter a todo item',
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: ref.watch(todoNotifierProvider).todos.length,
                  itemBuilder: (context, index) {
                    final todo = ref.watch(todoNotifierProvider).todos[index];
                    return Dismissible(
                      key: ValueKey(todo.id),
                      dragStartBehavior: DragStartBehavior.start,
                      background: Container(
                        color: Colors.green,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(Icons.check, color: Colors.white),
                      ),

                      secondaryBackground: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      onDismissed: (direction) {
                        ref.read(todoNotifierProvider).removeTodo(todo.id);
                      },
                      child: ListTile(
                        autofocus: false,
                        title: Text(todo.description),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
