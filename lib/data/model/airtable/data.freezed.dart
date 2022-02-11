// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostData _$PostDataFromJson(Map<String, dynamic> json) {
  return _PostData.fromJson(json);
}

/// @nodoc
class _$PostDataTearOff {
  const _$PostDataTearOff();

  _PostData call(
      {@JsonKey(name: 'records') required List<PostFieldWrapper> records}) {
    return _PostData(
      records: records,
    );
  }

  PostData fromJson(Map<String, Object?> json) {
    return PostData.fromJson(json);
  }
}

/// @nodoc
const $PostData = _$PostDataTearOff();

/// @nodoc
mixin _$PostData {
  @JsonKey(name: 'records')
  List<PostFieldWrapper> get records => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDataCopyWith<PostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataCopyWith<$Res> {
  factory $PostDataCopyWith(PostData value, $Res Function(PostData) then) =
      _$PostDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'records') List<PostFieldWrapper> records});
}

/// @nodoc
class _$PostDataCopyWithImpl<$Res> implements $PostDataCopyWith<$Res> {
  _$PostDataCopyWithImpl(this._value, this._then);

  final PostData _value;
  // ignore: unused_field
  final $Res Function(PostData) _then;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PostFieldWrapper>,
    ));
  }
}

/// @nodoc
abstract class _$PostDataCopyWith<$Res> implements $PostDataCopyWith<$Res> {
  factory _$PostDataCopyWith(_PostData value, $Res Function(_PostData) then) =
      __$PostDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'records') List<PostFieldWrapper> records});
}

/// @nodoc
class __$PostDataCopyWithImpl<$Res> extends _$PostDataCopyWithImpl<$Res>
    implements _$PostDataCopyWith<$Res> {
  __$PostDataCopyWithImpl(_PostData _value, $Res Function(_PostData) _then)
      : super(_value, (v) => _then(v as _PostData));

  @override
  _PostData get _value => super._value as _PostData;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_PostData(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PostFieldWrapper>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostData implements _PostData {
  const _$_PostData({@JsonKey(name: 'records') required this.records});

  factory _$_PostData.fromJson(Map<String, dynamic> json) =>
      _$$_PostDataFromJson(json);

  @override
  @JsonKey(name: 'records')
  final List<PostFieldWrapper> records;

  @override
  String toString() {
    return 'PostData(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostData &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @JsonKey(ignore: true)
  @override
  _$PostDataCopyWith<_PostData> get copyWith =>
      __$PostDataCopyWithImpl<_PostData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDataToJson(this);
  }
}

abstract class _PostData implements PostData {
  const factory _PostData(
          {@JsonKey(name: 'records') required List<PostFieldWrapper> records}) =
      _$_PostData;

  factory _PostData.fromJson(Map<String, dynamic> json) = _$_PostData.fromJson;

  @override
  @JsonKey(name: 'records')
  List<PostFieldWrapper> get records;
  @override
  @JsonKey(ignore: true)
  _$PostDataCopyWith<_PostData> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFieldWrapper _$PostFieldWrapperFromJson(Map<String, dynamic> json) {
  return _PostFieldWrapper.fromJson(json);
}

/// @nodoc
class _$PostFieldWrapperTearOff {
  const _$PostFieldWrapperTearOff();

  _PostFieldWrapper call({@JsonKey(name: 'fields') required Fields field}) {
    return _PostFieldWrapper(
      field: field,
    );
  }

  PostFieldWrapper fromJson(Map<String, Object?> json) {
    return PostFieldWrapper.fromJson(json);
  }
}

/// @nodoc
const $PostFieldWrapper = _$PostFieldWrapperTearOff();

/// @nodoc
mixin _$PostFieldWrapper {
  @JsonKey(name: 'fields')
  Fields get field => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostFieldWrapperCopyWith<PostFieldWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFieldWrapperCopyWith<$Res> {
  factory $PostFieldWrapperCopyWith(
          PostFieldWrapper value, $Res Function(PostFieldWrapper) then) =
      _$PostFieldWrapperCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'fields') Fields field});

  $FieldsCopyWith<$Res> get field;
}

/// @nodoc
class _$PostFieldWrapperCopyWithImpl<$Res>
    implements $PostFieldWrapperCopyWith<$Res> {
  _$PostFieldWrapperCopyWithImpl(this._value, this._then);

  final PostFieldWrapper _value;
  // ignore: unused_field
  final $Res Function(PostFieldWrapper) _then;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Fields,
    ));
  }

  @override
  $FieldsCopyWith<$Res> get field {
    return $FieldsCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value));
    });
  }
}

/// @nodoc
abstract class _$PostFieldWrapperCopyWith<$Res>
    implements $PostFieldWrapperCopyWith<$Res> {
  factory _$PostFieldWrapperCopyWith(
          _PostFieldWrapper value, $Res Function(_PostFieldWrapper) then) =
      __$PostFieldWrapperCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'fields') Fields field});

  @override
  $FieldsCopyWith<$Res> get field;
}

/// @nodoc
class __$PostFieldWrapperCopyWithImpl<$Res>
    extends _$PostFieldWrapperCopyWithImpl<$Res>
    implements _$PostFieldWrapperCopyWith<$Res> {
  __$PostFieldWrapperCopyWithImpl(
      _PostFieldWrapper _value, $Res Function(_PostFieldWrapper) _then)
      : super(_value, (v) => _then(v as _PostFieldWrapper));

  @override
  _PostFieldWrapper get _value => super._value as _PostFieldWrapper;

  @override
  $Res call({
    Object? field = freezed,
  }) {
    return _then(_PostFieldWrapper(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Fields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostFieldWrapper implements _PostFieldWrapper {
  const _$_PostFieldWrapper({@JsonKey(name: 'fields') required this.field});

  factory _$_PostFieldWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_PostFieldWrapperFromJson(json);

  @override
  @JsonKey(name: 'fields')
  final Fields field;

  @override
  String toString() {
    return 'PostFieldWrapper(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostFieldWrapper &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$PostFieldWrapperCopyWith<_PostFieldWrapper> get copyWith =>
      __$PostFieldWrapperCopyWithImpl<_PostFieldWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostFieldWrapperToJson(this);
  }
}

abstract class _PostFieldWrapper implements PostFieldWrapper {
  const factory _PostFieldWrapper(
      {@JsonKey(name: 'fields') required Fields field}) = _$_PostFieldWrapper;

  factory _PostFieldWrapper.fromJson(Map<String, dynamic> json) =
      _$_PostFieldWrapper.fromJson;

  @override
  @JsonKey(name: 'fields')
  Fields get field;
  @override
  @JsonKey(ignore: true)
  _$PostFieldWrapperCopyWith<_PostFieldWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

PatchFieldWrapper _$PatchFieldWrapperFromJson(Map<String, dynamic> json) {
  return _PatchFieldWrapper.fromJson(json);
}

/// @nodoc
class _$PatchFieldWrapperTearOff {
  const _$PatchFieldWrapperTearOff();

  _PatchFieldWrapper call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'fields') required Fields field}) {
    return _PatchFieldWrapper(
      id: id,
      field: field,
    );
  }

  PatchFieldWrapper fromJson(Map<String, Object?> json) {
    return PatchFieldWrapper.fromJson(json);
  }
}

/// @nodoc
const $PatchFieldWrapper = _$PatchFieldWrapperTearOff();

/// @nodoc
mixin _$PatchFieldWrapper {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  Fields get field => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchFieldWrapperCopyWith<PatchFieldWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchFieldWrapperCopyWith<$Res> {
  factory $PatchFieldWrapperCopyWith(
          PatchFieldWrapper value, $Res Function(PatchFieldWrapper) then) =
      _$PatchFieldWrapperCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'fields') Fields field});

  $FieldsCopyWith<$Res> get field;
}

/// @nodoc
class _$PatchFieldWrapperCopyWithImpl<$Res>
    implements $PatchFieldWrapperCopyWith<$Res> {
  _$PatchFieldWrapperCopyWithImpl(this._value, this._then);

  final PatchFieldWrapper _value;
  // ignore: unused_field
  final $Res Function(PatchFieldWrapper) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? field = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Fields,
    ));
  }

  @override
  $FieldsCopyWith<$Res> get field {
    return $FieldsCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value));
    });
  }
}

/// @nodoc
abstract class _$PatchFieldWrapperCopyWith<$Res>
    implements $PatchFieldWrapperCopyWith<$Res> {
  factory _$PatchFieldWrapperCopyWith(
          _PatchFieldWrapper value, $Res Function(_PatchFieldWrapper) then) =
      __$PatchFieldWrapperCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'fields') Fields field});

  @override
  $FieldsCopyWith<$Res> get field;
}

/// @nodoc
class __$PatchFieldWrapperCopyWithImpl<$Res>
    extends _$PatchFieldWrapperCopyWithImpl<$Res>
    implements _$PatchFieldWrapperCopyWith<$Res> {
  __$PatchFieldWrapperCopyWithImpl(
      _PatchFieldWrapper _value, $Res Function(_PatchFieldWrapper) _then)
      : super(_value, (v) => _then(v as _PatchFieldWrapper));

  @override
  _PatchFieldWrapper get _value => super._value as _PatchFieldWrapper;

  @override
  $Res call({
    Object? id = freezed,
    Object? field = freezed,
  }) {
    return _then(_PatchFieldWrapper(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as Fields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatchFieldWrapper implements _PatchFieldWrapper {
  const _$_PatchFieldWrapper(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fields') required this.field});

  factory _$_PatchFieldWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_PatchFieldWrapperFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fields')
  final Fields field;

  @override
  String toString() {
    return 'PatchFieldWrapper(id: $id, field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatchFieldWrapper &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.field, field));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(field));

  @JsonKey(ignore: true)
  @override
  _$PatchFieldWrapperCopyWith<_PatchFieldWrapper> get copyWith =>
      __$PatchFieldWrapperCopyWithImpl<_PatchFieldWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchFieldWrapperToJson(this);
  }
}

abstract class _PatchFieldWrapper implements PatchFieldWrapper {
  const factory _PatchFieldWrapper(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'fields') required Fields field}) = _$_PatchFieldWrapper;

  factory _PatchFieldWrapper.fromJson(Map<String, dynamic> json) =
      _$_PatchFieldWrapper.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fields')
  Fields get field;
  @override
  @JsonKey(ignore: true)
  _$PatchFieldWrapperCopyWith<_PatchFieldWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

PatchData _$PatchDataFromJson(Map<String, dynamic> json) {
  return _PatchData.fromJson(json);
}

/// @nodoc
class _$PatchDataTearOff {
  const _$PatchDataTearOff();

  _PatchData call(
      {@JsonKey(name: 'records') required List<PatchFieldWrapper> records}) {
    return _PatchData(
      records: records,
    );
  }

  PatchData fromJson(Map<String, Object?> json) {
    return PatchData.fromJson(json);
  }
}

/// @nodoc
const $PatchData = _$PatchDataTearOff();

/// @nodoc
mixin _$PatchData {
  @JsonKey(name: 'records')
  List<PatchFieldWrapper> get records => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchDataCopyWith<PatchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchDataCopyWith<$Res> {
  factory $PatchDataCopyWith(PatchData value, $Res Function(PatchData) then) =
      _$PatchDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'records') List<PatchFieldWrapper> records});
}

/// @nodoc
class _$PatchDataCopyWithImpl<$Res> implements $PatchDataCopyWith<$Res> {
  _$PatchDataCopyWithImpl(this._value, this._then);

  final PatchData _value;
  // ignore: unused_field
  final $Res Function(PatchData) _then;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_value.copyWith(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PatchFieldWrapper>,
    ));
  }
}

/// @nodoc
abstract class _$PatchDataCopyWith<$Res> implements $PatchDataCopyWith<$Res> {
  factory _$PatchDataCopyWith(
          _PatchData value, $Res Function(_PatchData) then) =
      __$PatchDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'records') List<PatchFieldWrapper> records});
}

/// @nodoc
class __$PatchDataCopyWithImpl<$Res> extends _$PatchDataCopyWithImpl<$Res>
    implements _$PatchDataCopyWith<$Res> {
  __$PatchDataCopyWithImpl(_PatchData _value, $Res Function(_PatchData) _then)
      : super(_value, (v) => _then(v as _PatchData));

  @override
  _PatchData get _value => super._value as _PatchData;

  @override
  $Res call({
    Object? records = freezed,
  }) {
    return _then(_PatchData(
      records: records == freezed
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<PatchFieldWrapper>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatchData implements _PatchData {
  const _$_PatchData({@JsonKey(name: 'records') required this.records});

  factory _$_PatchData.fromJson(Map<String, dynamic> json) =>
      _$$_PatchDataFromJson(json);

  @override
  @JsonKey(name: 'records')
  final List<PatchFieldWrapper> records;

  @override
  String toString() {
    return 'PatchData(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatchData &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @JsonKey(ignore: true)
  @override
  _$PatchDataCopyWith<_PatchData> get copyWith =>
      __$PatchDataCopyWithImpl<_PatchData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchDataToJson(this);
  }
}

abstract class _PatchData implements PatchData {
  const factory _PatchData(
      {@JsonKey(name: 'records')
          required List<PatchFieldWrapper> records}) = _$_PatchData;

  factory _PatchData.fromJson(Map<String, dynamic> json) =
      _$_PatchData.fromJson;

  @override
  @JsonKey(name: 'records')
  List<PatchFieldWrapper> get records;
  @override
  @JsonKey(ignore: true)
  _$PatchDataCopyWith<_PatchData> get copyWith =>
      throw _privateConstructorUsedError;
}
