// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt}) {
    return _Todo(
      id: id,
      title: title,
      createdAt: createdAt,
      completedAt: completedAt,
    );
  }

  Todo fromJson(Map<String, Object?> json) {
    return Todo.fromJson(json);
  }
}

/// @nodoc
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: completedAt == freezed
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Todo extends _Todo {
  const _$_Todo(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'completed_at') this.completedAt})
      : super._();

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.completedAt, completedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(completedAt));

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoToJson(this);
  }
}

abstract class _Todo extends Todo {
  const factory _Todo(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt}) = _$_Todo;
  const _Todo._() : super._();

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}
