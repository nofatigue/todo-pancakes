// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasksUpdateDetails.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtasksUpdateDetailsData> _$gtasksUpdateDetailsDataSerializer =
    _$GtasksUpdateDetailsDataSerializer();
Serializer<GtasksUpdateDetailsData_task>
    _$gtasksUpdateDetailsDataTaskSerializer =
    _$GtasksUpdateDetailsData_taskSerializer();

class _$GtasksUpdateDetailsDataSerializer
    implements StructuredSerializer<GtasksUpdateDetailsData> {
  @override
  final Iterable<Type> types = const [
    GtasksUpdateDetailsData,
    _$GtasksUpdateDetailsData
  ];
  @override
  final String wireName = 'GtasksUpdateDetailsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtasksUpdateDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'task',
      serializers.serialize(object.task,
          specifiedType: const FullType(GtasksUpdateDetailsData_task)),
    ];

    return result;
  }

  @override
  GtasksUpdateDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GtasksUpdateDetailsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'task':
          result.task.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GtasksUpdateDetailsData_task))!
              as GtasksUpdateDetailsData_task);
          break;
      }
    }

    return result.build();
  }
}

class _$GtasksUpdateDetailsData_taskSerializer
    implements StructuredSerializer<GtasksUpdateDetailsData_task> {
  @override
  final Iterable<Type> types = const [
    GtasksUpdateDetailsData_task,
    _$GtasksUpdateDetailsData_task
  ];
  @override
  final String wireName = 'GtasksUpdateDetailsData_task';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtasksUpdateDetailsData_task object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GtasksUpdateDetailsData_task deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GtasksUpdateDetailsData_taskBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GtasksUpdateDetailsData extends GtasksUpdateDetailsData {
  @override
  final String G__typename;
  @override
  final String type;
  @override
  final GtasksUpdateDetailsData_task task;

  factory _$GtasksUpdateDetailsData(
          [void Function(GtasksUpdateDetailsDataBuilder)? updates]) =>
      (GtasksUpdateDetailsDataBuilder()..update(updates))._build();

  _$GtasksUpdateDetailsData._(
      {required this.G__typename, required this.type, required this.task})
      : super._();
  @override
  GtasksUpdateDetailsData rebuild(
          void Function(GtasksUpdateDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtasksUpdateDetailsDataBuilder toBuilder() =>
      GtasksUpdateDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtasksUpdateDetailsData &&
        G__typename == other.G__typename &&
        type == other.type &&
        task == other.task;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, task.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtasksUpdateDetailsData')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('task', task))
        .toString();
  }
}

class GtasksUpdateDetailsDataBuilder
    implements
        Builder<GtasksUpdateDetailsData, GtasksUpdateDetailsDataBuilder> {
  _$GtasksUpdateDetailsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GtasksUpdateDetailsData_taskBuilder? _task;
  GtasksUpdateDetailsData_taskBuilder get task =>
      _$this._task ??= GtasksUpdateDetailsData_taskBuilder();
  set task(GtasksUpdateDetailsData_taskBuilder? task) => _$this._task = task;

  GtasksUpdateDetailsDataBuilder() {
    GtasksUpdateDetailsData._initializeBuilder(this);
  }

  GtasksUpdateDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _task = $v.task.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtasksUpdateDetailsData other) {
    _$v = other as _$GtasksUpdateDetailsData;
  }

  @override
  void update(void Function(GtasksUpdateDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtasksUpdateDetailsData build() => _build();

  _$GtasksUpdateDetailsData _build() {
    _$GtasksUpdateDetailsData _$result;
    try {
      _$result = _$v ??
          _$GtasksUpdateDetailsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GtasksUpdateDetailsData', 'G__typename'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GtasksUpdateDetailsData', 'type'),
            task: task.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'task';
        task.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GtasksUpdateDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GtasksUpdateDetailsData_task extends GtasksUpdateDetailsData_task {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String text;
  @override
  final bool completed;

  factory _$GtasksUpdateDetailsData_task(
          [void Function(GtasksUpdateDetailsData_taskBuilder)? updates]) =>
      (GtasksUpdateDetailsData_taskBuilder()..update(updates))._build();

  _$GtasksUpdateDetailsData_task._(
      {required this.G__typename,
      required this.id,
      required this.text,
      required this.completed})
      : super._();
  @override
  GtasksUpdateDetailsData_task rebuild(
          void Function(GtasksUpdateDetailsData_taskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtasksUpdateDetailsData_taskBuilder toBuilder() =>
      GtasksUpdateDetailsData_taskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtasksUpdateDetailsData_task &&
        G__typename == other.G__typename &&
        id == other.id &&
        text == other.text &&
        completed == other.completed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtasksUpdateDetailsData_task')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('text', text)
          ..add('completed', completed))
        .toString();
  }
}

class GtasksUpdateDetailsData_taskBuilder
    implements
        Builder<GtasksUpdateDetailsData_task,
            GtasksUpdateDetailsData_taskBuilder> {
  _$GtasksUpdateDetailsData_task? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  GtasksUpdateDetailsData_taskBuilder() {
    GtasksUpdateDetailsData_task._initializeBuilder(this);
  }

  GtasksUpdateDetailsData_taskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _text = $v.text;
      _completed = $v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtasksUpdateDetailsData_task other) {
    _$v = other as _$GtasksUpdateDetailsData_task;
  }

  @override
  void update(void Function(GtasksUpdateDetailsData_taskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtasksUpdateDetailsData_task build() => _build();

  _$GtasksUpdateDetailsData_task _build() {
    final _$result = _$v ??
        _$GtasksUpdateDetailsData_task._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GtasksUpdateDetailsData_task', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GtasksUpdateDetailsData_task', 'id'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'GtasksUpdateDetailsData_task', 'text'),
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'GtasksUpdateDetailsData_task', 'completed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
