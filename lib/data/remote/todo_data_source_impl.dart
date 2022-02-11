import 'dart:io';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/data/model/airtable/airtable_todo.dart';
import '/data/model/airtable/data.dart';
import '/data/providers/airtable_client_provider.dart';
import '/data/remote/todo_data_source.dart';
import '/models/todo/todo.dart';
import '/models/typedefs/json.dart';

final todoDataSource =
    Provider<TodoDataSource>((ref) => TodoDataSourceImpl(ref.read));

class TodoDataSourceImpl extends TodoDataSource {
  TodoDataSourceImpl(this._read);

  static const apiKey = String.fromEnvironment('AIRTABLE_API_KEY');

  final Reader _read;
  late final _dio = _read(
    airtableClientProvider(
      AirtableApiData(
        apiKey: apiKey,
        baseId: 'appBehcjzCY858wrW',
        view: 'todos',
      ),
    ),
  );

  @override
  Future<Todo> create(Todo todo) async {
    final response = await _dio.post<Json>(
      '/',
      options: Options(
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      ),
      data: PostData.fromTodo(todo),
    );
    final airtableTodos = AirtableTodos.fromJson(response.data!);
    return airtableTodos.records.first.asModel;
  }

  @override
  Future<void> delete(String id) => _dio.delete<dynamic>(
        '/$id',
      );

  @override
  Future<List<Todo>> findAll() async {
    final response = await _dio.get<Json>('');
    final airtableTodos = AirtableTodos.fromJson(response.data!);
    return airtableTodos.records.map((todo) => todo.asModel).toList()
      ..sort(
        (a, b) =>
            a.createdAt.millisecondsSinceEpoch -
            b.createdAt.millisecondsSinceEpoch,
      );
  }

  @override
  Future<Todo> update(Todo todo) async {
    final response = await _dio.patch<Json>(
      '/',
      options: Options(
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      ),
      data: PatchData.fromTodo(todo),
    );
    return AirtableTodos.fromJson(response.data!).records.first.asModel;
  }
}

extension _Convert on AirtableTodo {
  Todo get asModel => Todo(
        id: id,
        title: fields.title,
        completedAt: fields.completedAt,
        createdAt: createdAt,
      );
}
