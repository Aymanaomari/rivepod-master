import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';

Uuid uuid = Uuid();

@freezed
abstract class Todo with _$Todo {
  factory Todo({
    required String id,
    required String description,
    @Default(false) bool isMarkDone,
  }) = _Todo;

  factory Todo.add({required String description}) {
    return Todo(id: uuid.v4(), description: description);
  }
}
