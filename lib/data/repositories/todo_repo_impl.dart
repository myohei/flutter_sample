import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/remote/todo_data_source_impl.dart';
import '/data/repositories/todo_repo.dart';
import '/models/result/result.dart';
import '/models/todo/todo.dart';

final todoRepoProvider = Provider<TodoRepo>((ref) => TodoRepoImpl(ref.read));

class TodoRepoImpl extends TodoRepo {
  TodoRepoImpl(this._read);

  final Reader _read;
  late final _dataSrc = _read(todoDataSource);

  @override
  Future<Result<Todo>> create(Todo todo) =>
      Result.guardNetwork(() => _dataSrc.create(todo));

  @override
  Future<Result<void>> delete(String id) =>
      Result.guardNetwork(() => _dataSrc.delete(id));

  @override
  Future<Result<List<Todo>>> findAll() => Result.guardNetwork(_dataSrc.findAll);

  @override
  Future<Result<Todo>> update(Todo todo) =>
      Result.guardNetwork(() => _dataSrc.update(todo));
}
