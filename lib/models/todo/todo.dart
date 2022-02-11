import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
  }) = _Todo;

  const Todo._();

  factory Todo.fromTitle(String title) => Todo(
        id: 'fake',
        title: title,
        createdAt: DateTime.now(),
        completedAt: null,
      );

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  bool get isCompleted => completedAt != null;

  Todo completed() => copyWith(completedAt: DateTime.now());

  Todo uncompleted() => copyWith(completedAt: null);
}
