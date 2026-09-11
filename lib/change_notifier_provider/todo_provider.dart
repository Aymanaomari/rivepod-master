import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/change_notifier_provider/model/todo.dart';

class TodoNotifier extends ChangeNotifier {
  List<Todo> todos = [];

  TodoNotifier();

  void addTodo(String description) {
    todos = [...todos, Todo.add(description: description)];
    notifyListeners();
  }

  void removeTodo(String id) {
    todos = todos.where((todo) => todo.id != id).toList();
    notifyListeners();
  }
}

final todoNotifierProvider = ChangeNotifierProvider<TodoNotifier>((ref) {
  return TodoNotifier();
});
