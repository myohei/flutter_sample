// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airtable_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AirtableTodos _$$_AirtableTodosFromJson(Map<String, dynamic> json) =>
    _$_AirtableTodos(
      records: _parseRecords(json['records']),
    );

Map<String, dynamic> _$$_AirtableTodosToJson(_$_AirtableTodos instance) =>
    <String, dynamic>{
      'records': instance.records.map((e) => e.toJson()).toList(),
    };

_$_AirtableTodo _$$_AirtableTodoFromJson(Map<String, dynamic> json) =>
    _$_AirtableTodo(
      id: json['id'] as String,
      fields: Fields.fromJson(json['fields'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdTime'] as String),
    );

Map<String, dynamic> _$$_AirtableTodoToJson(_$_AirtableTodo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.fields.toJson(),
      'createdTime': instance.createdAt.toIso8601String(),
    };

_$_Fields _$$_FieldsFromJson(Map<String, dynamic> json) => _$_Fields(
      title: json['title'] as String,
      completedAt: json['CompletedAt'] == null
          ? null
          : DateTime.parse(json['CompletedAt'] as String),
    );

Map<String, dynamic> _$$_FieldsToJson(_$_Fields instance) => <String, dynamic>{
      'title': instance.title,
      'CompletedAt': instance.completedAt?.toIso8601String(),
    };
