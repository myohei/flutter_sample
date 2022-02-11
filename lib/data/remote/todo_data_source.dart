import '/models/todo/todo.dart';

abstract class TodoDataSource {
  Future<List<Todo>> findAll();

  Future<Todo> create(Todo todo);

  Future<Todo> update(Todo todo);

  Future<void> delete(String id);
}
