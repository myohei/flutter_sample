import 'package:freezed_annotation/freezed_annotation.dart';

import '/models/typedefs/json.dart';

part 'airtable_todo.freezed.dart';
part 'airtable_todo.g.dart';

@freezed
class AirtableTodos with _$AirtableTodos {
  const factory AirtableTodos({
    @JsonKey(name: 'records', fromJson: _parseRecords)
        required List<AirtableTodo> records,
  }) = _AirtableTodos;

  factory AirtableTodos.fromJson(Map<String, dynamic> json) =>
      _$AirtableTodosFromJson(json);
}

@freezed
class AirtableTodo with _$AirtableTodo {
  const factory AirtableTodo({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fields') required Fields fields,
    @JsonKey(name: 'createdTime') required DateTime createdAt,
  }) = _AirtableTodo;

  factory AirtableTodo.fromJson(Map<String, dynamic> json) =>
      _$AirtableTodoFromJson(json);
}

@freezed
class Fields with _$Fields {
  const factory Fields({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'CompletedAt') DateTime? completedAt,
  }) = _Fields;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

List<AirtableTodo> _parseRecords(dynamic value) {
  final list = value as List<dynamic>;
  return list
      .map((dynamic e) => e as Map<dynamic, dynamic>)
      .map((Map<dynamic, dynamic> e) => Map<String, dynamic>.from(e))
      .where(
        (e) =>
            e.containsKey('fields') &&
            (e['fields'] as Json).containsKey('title'),
      )
      .map((json) => AirtableTodo.fromJson(json))
      .toList();
}
