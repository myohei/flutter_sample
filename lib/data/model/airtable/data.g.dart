// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostData _$$_PostDataFromJson(Map<String, dynamic> json) => _$_PostData(
      records: (json['records'] as List<dynamic>)
          .map((e) => PostFieldWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostDataToJson(_$_PostData instance) =>
    <String, dynamic>{
      'records': instance.records.map((e) => e.toJson()).toList(),
    };

_$_PostFieldWrapper _$$_PostFieldWrapperFromJson(Map<String, dynamic> json) =>
    _$_PostFieldWrapper(
      field: Fields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostFieldWrapperToJson(_$_PostFieldWrapper instance) =>
    <String, dynamic>{
      'fields': instance.field.toJson(),
    };

_$_PatchFieldWrapper _$$_PatchFieldWrapperFromJson(Map<String, dynamic> json) =>
    _$_PatchFieldWrapper(
      id: json['id'] as String,
      field: Fields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PatchFieldWrapperToJson(
        _$_PatchFieldWrapper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fields': instance.field.toJson(),
    };

_$_PatchData _$$_PatchDataFromJson(Map<String, dynamic> json) => _$_PatchData(
      records: (json['records'] as List<dynamic>)
          .map((e) => PatchFieldWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PatchDataToJson(_$_PatchData instance) =>
    <String, dynamic>{
      'records': instance.records.map((e) => e.toJson()).toList(),
    };
