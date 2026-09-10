import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/state_notifier/model/todo.dart';

class TodoNotifier extends StateNotifier<List<Todo>> {
  TodoNotifier(super.state);

  void addTodo(String description) {
    state = [...state, Todo.add(description: description)];
  }

  void removeTodo(String id) {
    state = state.where((todo) => todo.id != id).toList();
  }
}

final todoNotifierProvider = StateNotifierProvider<TodoNotifier, List<Todo>>((
  Ref ref,
) {
  return TodoNotifier([]);
});
