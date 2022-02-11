// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'airtable_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AirtableTodos _$AirtableTodosFromJson(Map<String, dynamic> json) {
  return _AirtableTodos.fromJson(json);
}

/// @nodoc
class _$AirtableTodosTearOff {
  const _$AirtableTodosTearOff();

  _AirtableTodos call(
      {@JsonKey(name: 'records', fromJson: _parseRecords)
          required List<AirtableTodo> records}) {
    return _AirtableTodos(
      records: records,
    );
  }

  AirtableTodos fromJson(Map<String, Object?> json) {
    return AirtableTodos.fromJson(json);
  }
}

/// @nodoc
const $AirtableTodos = _$AirtableTodosTearOff();

/// @nodoc
mixin _$AirtableTodos {
  @JsonKey(name: 'records', fromJson: _parseRecords)
  List<AirtableTodo> get records => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirtableTodosCopyWith<AirtableTodos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirtableTodosCopyWith<$Res> {
  factory $AirtableTodosCopyWith(
          AirtableTodos value, $Res Function(AirtableTodos) then) =
      _$AirtableTodosCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'records', fromJson: _parseRecords)
          List<AirtableTodo> records});
}

/// @nodoc
class _$AirtableTodosCopyWithImpl<$Res>
    implements $AirtableTodosCopyWith<$Res> {
  _$AirtableTodosCopyWithImpl(this._value, this._then);

  final AirtableTodos _value;
  // ignore: unused_field
  final $Res Function(AirtableTodos) _then;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<AirtableTodo>,
    ));
  }
}

/// @nodoc
abstract class _$AirtableTodosCopyWith<$Res>
    implements $AirtableTodosCopyWith<$Res> {
  factory _$AirtableTodosCopyWith(
          _AirtableTodos value, $Res Function(_AirtableTodos) then) =
      __$AirtableTodosCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'records', fromJson: _parseRecords)
          List<AirtableTodo> records});
}

/// @nodoc
class __$AirtableTodosCopyWithImpl<$Res>
    extends _$AirtableTodosCopyWithImpl<$Res>
    implements _$AirtableTodosCopyWith<$Res> {
  __$AirtableTodosCopyWithImpl(
      _AirtableTodos _value, $Res Function(_AirtableTodos) _then)
      : super(_value, (v) => _then(v as _AirtableTodos));

  @override
  _AirtableTodos get _value => super._value as _AirtableTodos;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_AirtableTodos(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<AirtableTodo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AirtableTodos implements _AirtableTodos {
  const _$_AirtableTodos(
      {@JsonKey(name: 'records', fromJson: _parseRecords)
          required this.records});

  factory _$_AirtableTodos.fromJson(Map<String, dynamic> json) =>
      _$$_AirtableTodosFromJson(json);

  @override
  @JsonKey(name: 'records', fromJson: _parseRecords)
  final List<AirtableTodo> records;

  @override
  String toString() {
    return 'AirtableTodos(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AirtableTodos &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @JsonKey(ignore: true)
  @override
  _$AirtableTodosCopyWith<_AirtableTodos> get copyWith =>
      __$AirtableTodosCopyWithImpl<_AirtableTodos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirtableTodosToJson(this);
  }
}

abstract class _AirtableTodos implements AirtableTodos {
  const factory _AirtableTodos(
      {@JsonKey(name: 'records', fromJson: _parseRecords)
          required List<AirtableTodo> records}) = _$_AirtableTodos;

  factory _AirtableTodos.fromJson(Map<String, dynamic> json) =
      _$_AirtableTodos.fromJson;

  @override
  @JsonKey(name: 'records', fromJson: _parseRecords)
  List<AirtableTodo> get records;
  @override
  @JsonKey(ignore: true)
  _$AirtableTodosCopyWith<_AirtableTodos> get copyWith =>
      throw _privateConstructorUsedError;
}

AirtableTodo _$AirtableTodoFromJson(Map<String, dynamic> json) {
  return _AirtableTodo.fromJson(json);
}

/// @nodoc
class _$AirtableTodoTearOff {
  const _$AirtableTodoTearOff();

  _AirtableTodo call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'fields') required Fields fields,
      @JsonKey(name: 'createdTime') required DateTime createdAt}) {
    return _AirtableTodo(
      id: id,
      fields: fields,
      createdAt: createdAt,
    );
  }

  AirtableTodo fromJson(Map<String, Object?> json) {
    return AirtableTodo.fromJson(json);
  }
}

/// @nodoc
const $AirtableTodo = _$AirtableTodoTearOff();

/// @nodoc
mixin _$AirtableTodo {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdTime')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirtableTodoCopyWith<AirtableTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirtableTodoCopyWith<$Res> {
  factory $AirtableTodoCopyWith(
          AirtableTodo value, $Res Function(AirtableTodo) then) =
      _$AirtableTodoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fields') Fields fields,
      @JsonKey(name: 'createdTime') DateTime createdAt});

  $FieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$AirtableTodoCopyWithImpl<$Res> implements $AirtableTodoCopyWith<$Res> {
  _$AirtableTodoCopyWithImpl(this._value, this._then);

  final AirtableTodo _value;
  // ignore: unused_field
  final $Res Function(AirtableTodo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fields = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Fields,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $FieldsCopyWith<$Res> get fields {
    return $FieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value));
    });
  }
}

/// @nodoc
abstract class _$AirtableTodoCopyWith<$Res>
    implements $AirtableTodoCopyWith<$Res> {
  factory _$AirtableTodoCopyWith(
          _AirtableTodo value, $Res Function(_AirtableTodo) then) =
      __$AirtableTodoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fields') Fields fields,
      @JsonKey(name: 'createdTime') DateTime createdAt});

  @override
  $FieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$AirtableTodoCopyWithImpl<$Res> extends _$AirtableTodoCopyWithImpl<$Res>
    implements _$AirtableTodoCopyWith<$Res> {
  __$AirtableTodoCopyWithImpl(
      _AirtableTodo _value, $Res Function(_AirtableTodo) _then)
      : super(_value, (v) => _then(v as _AirtableTodo));

  @override
  _AirtableTodo get _value => super._value as _AirtableTodo;

  @override
  $Res call({
    Object? id = freezed,
    Object? fields = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_AirtableTodo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Fields,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AirtableTodo implements _AirtableTodo {
  const _$_AirtableTodo(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fields') required this.fields,
      @JsonKey(name: 'createdTime') required this.createdAt});

  factory _$_AirtableTodo.fromJson(Map<String, dynamic> json) =>
      _$$_AirtableTodoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fields')
  final Fields fields;
  @override
  @JsonKey(name: 'createdTime')
  final DateTime createdAt;

  @override
  String toString() {
    return 'AirtableTodo(id: $id, fields: $fields, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AirtableTodo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fields),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$AirtableTodoCopyWith<_AirtableTodo> get copyWith =>
      __$AirtableTodoCopyWithImpl<_AirtableTodo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirtableTodoToJson(this);
  }
}

abstract class _AirtableTodo implements AirtableTodo {
  const factory _AirtableTodo(
          {@JsonKey(name: 'id') required String id,
          @JsonKey(name: 'fields') required Fields fields,
          @JsonKey(name: 'createdTime') required DateTime createdAt}) =
      _$_AirtableTodo;

  factory _AirtableTodo.fromJson(Map<String, dynamic> json) =
      _$_AirtableTodo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fields')
  Fields get fields;
  @override
  @JsonKey(name: 'createdTime')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$AirtableTodoCopyWith<_AirtableTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return _Fields.fromJson(json);
}

/// @nodoc
class _$FieldsTearOff {
  const _$FieldsTearOff();

  _Fields call(
      {@JsonKey(name: 'title') required String title,
      @JsonKey(name: 'CompletedAt') DateTime? completedAt}) {
    return _Fields(
      title: title,
      completedAt: completedAt,
    );
  }

  Fields fromJson(Map<String, Object?> json) {
    return Fields.fromJson(json);
  }
}

/// @nodoc
const $Fields = _$FieldsTearOff();

/// @nodoc
mixin _$Fields {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'CompletedAt')
  DateTime? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsCopyWith<Fields> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsCopyWith<$Res> {
  factory $FieldsCopyWith(Fields value, $Res Function(Fields) then) =
      _$FieldsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'CompletedAt') DateTime? completedAt});
}

/// @nodoc
class _$FieldsCopyWithImpl<$Res> implements $FieldsCopyWith<$Res> {
  _$FieldsCopyWithImpl(this._value, this._then);

  final Fields _value;
  // ignore: unused_field
  final $Res Function(Fields) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$FieldsCopyWith<$Res> implements $FieldsCopyWith<$Res> {
  factory _$FieldsCopyWith(_Fields value, $Res Function(_Fields) then) =
      __$FieldsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'CompletedAt') DateTime? completedAt});
}

/// @nodoc
class __$FieldsCopyWithImpl<$Res> extends _$FieldsCopyWithImpl<$Res>
    implements _$FieldsCopyWith<$Res> {
  __$FieldsCopyWithImpl(_Fields _value, $Res Function(_Fields) _then)
      : super(_value, (v) => _then(v as _Fields));

  @override
  _Fields get _value => super._value as _Fields;

  @override
  $Res call({
    Object? title = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_Fields(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fields implements _Fields {
  const _$_Fields(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'CompletedAt') this.completedAt});

  factory _$_Fields.fromJson(Map<String, dynamic> json) =>
      _$$_FieldsFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'CompletedAt')
  final DateTime? completedAt;

  @override
  String toString() {
    return 'Fields(title: $title, completedAt: $completedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fields &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.completedAt, completedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(completedAt));

  @JsonKey(ignore: true)
  @override
  _$FieldsCopyWith<_Fields> get copyWith =>
      __$FieldsCopyWithImpl<_Fields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldsToJson(this);
  }
}

abstract class _Fields implements Fields {
  const factory _Fields(
      {@JsonKey(name: 'title') required String title,
      @JsonKey(name: 'CompletedAt') DateTime? completedAt}) = _$_Fields;

  factory _Fields.fromJson(Map<String, dynamic> json) = _$_Fields.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'CompletedAt')
  DateTime? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$FieldsCopyWith<_Fields> get copyWith => throw _privateConstructorUsedError;
}
