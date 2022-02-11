import 'package:freezed_annotation/freezed_annotation.dart';

import '/models/todo/todo.dart';
import 'airtable_todo.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class PostData with _$PostData {
  const factory PostData({
    @JsonKey(name: 'records') required List<PostFieldWrapper> records,
  }) = _PostData;

  factory PostData.fromJson(Map<String, dynamic> json) =>
      _$PostDataFromJson(json);

  factory PostData.fromTodo(Todo todo) =>
      PostData(records: [PostFieldWrapper.fromTodo(todo)]);
}

@freezed
class PostFieldWrapper with _$PostFieldWrapper {
  const factory PostFieldWrapper({
    @JsonKey(name: 'fields') required Fields field,
  }) = _PostFieldWrapper;

  factory PostFieldWrapper.fromJson(Map<String, dynamic> json) =>
      _$PostFieldWrapperFromJson(json);

  factory PostFieldWrapper.fromTodo(Todo todo) => PostFieldWrapper(
        field: Fields(
          title: todo.title,
          completedAt: todo.completedAt,
        ),
      );
}

@freezed
class PatchFieldWrapper with _$PatchFieldWrapper {
  const factory PatchFieldWrapper({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'fields') required Fields field,
  }) = _PatchFieldWrapper;

  factory PatchFieldWrapper.fromJson(Map<String, dynamic> json) =>
      _$PatchFieldWrapperFromJson(json);

  factory PatchFieldWrapper.fromTodo(Todo todo) => PatchFieldWrapper(
        id: todo.id,
        field: Fields(
          title: todo.title,
          completedAt: todo.completedAt,
        ),
      );
}

@freezed
class PatchData with _$PatchData {
  const factory PatchData({
    @JsonKey(name: 'records') required List<PatchFieldWrapper> records,
  }) = _PatchData;

  factory PatchData.fromJson(Map<String, dynamic> json) =>
      _$PatchDataFromJson(json);

  factory PatchData.fromTodo(Todo todo) =>
      PatchData(records: [PatchFieldWrapper.fromTodo(todo)]);
}
