import '/models/result/result.dart';
import '/models/todo/todo.dart';

abstract class TodoRepo {
  Future<Result<List<Todo>>> findAll();

  Future<Result<Todo>> create(Todo todo);

  Future<Result<Todo>> update(Todo todo);

  Future<Result<void>> delete(String id);
}
