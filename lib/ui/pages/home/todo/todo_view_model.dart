import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/repositories/todo_repo_impl.dart';
import '/models/result/result.dart';
import '/models/todo/todo.dart';

final todoViewModelProvider =
    StateNotifierProvider.autoDispose<TodoViewModel, Result<List<Todo>>?>(
  (ref) => TodoViewModel(ref.read),
);

class TodoViewModel extends StateNotifier<Result<List<Todo>>?> {
  TodoViewModel(this._read) : super(null);

  final Reader _read;
  late final _repo = _read(todoRepoProvider);

  Future<void> getTodos() async {
    final todos = await _repo.findAll();
    state = todos;
  }

  Future<void> create(String title) async {
    if (title.isEmpty) {
      // TODO(mae): handle error
      return;
    }
    return state?.ifSuccess((data) async {
      final newTodo = Todo.fromTitle(title);
      final result = await _repo.create(newTodo);
      // TODO(mae): handle error
      result.ifSuccess((todo) {
        data.add(todo);
        state = Result.success(data: data);
      });
    });
  }

  Future<void> completed(String taskId, {required bool completed}) async =>
      state?.ifSuccess((data) async {
        final idx = data.indexWhere((t) => t.id == taskId);
        final todo = data[idx];
        if ((todo.isCompleted && completed) ||
            (!todo.isCompleted && !completed)) {
          // TODO(mae): status error
          return;
        }
        final updatedTodo = completed ? todo.completed() : todo.uncompleted();
        final result = await _repo.update(updatedTodo);
        // TODO(mae): handle error
        result.ifSuccess((t) {
          data[idx] = t;
          state = Result.success(data: data);
        });
      });

  Future<void> delete(String taskId) async => state?.ifSuccess((data) async {
        final idx = data.indexWhere((todo) => todo.id == taskId);
        if (idx < 0) {
          // TODO(mae): not found error
          return;
        }
        final result = await _repo.delete(taskId);
        // TODO(mae): handle error
        result.ifSuccess((_) {
          data.removeAt(idx);
          state = Result.success(data: data);
        });
      });
}
