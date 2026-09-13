import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_learning/provider_scope/model/todo.dart';

part 'todo_list_providers.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  List<Todo> build() {
    return [];
  }

  void addTodo(Todo todo) {
    state = [...state, todo];
  }
}

@riverpod
Todo todoItem(TodoItemRef ref) {
  return Todo(id: 0, title: '');
}
