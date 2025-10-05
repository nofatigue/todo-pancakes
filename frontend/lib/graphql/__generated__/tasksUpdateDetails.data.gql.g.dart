// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasksUpdateDetails.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtasksUpdateDetailsData> _$gtasksUpdateDetailsDataSerializer =
    _$GtasksUpdateDetailsDataSerializer();
Serializer<GtasksUpdateDetailsData_tasks>
    _$gtasksUpdateDetailsDataTasksSerializer =
    _$GtasksUpdateDetailsData_tasksSerializer();

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
      'tasks',
      serializers.serialize(object.tasks,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GtasksUpdateDetailsData_tasks)])),
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
        case 'tasks':
          result.tasks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GtasksUpdateDetailsData_tasks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GtasksUpdateDetailsData_tasksSerializer
    implements StructuredSerializer<GtasksUpdateDetailsData_tasks> {
  @override
  final Iterable<Type> types = const [
    GtasksUpdateDetailsData_tasks,
    _$GtasksUpdateDetailsData_tasks
  ];
  @override
  final String wireName = 'GtasksUpdateDetailsData_tasks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtasksUpdateDetailsData_tasks object,
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
  GtasksUpdateDetailsData_tasks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GtasksUpdateDetailsData_tasksBuilder();

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
  final BuiltList<GtasksUpdateDetailsData_tasks> tasks;

  factory _$GtasksUpdateDetailsData(
          [void Function(GtasksUpdateDetailsDataBuilder)? updates]) =>
      (GtasksUpdateDetailsDataBuilder()..update(updates))._build();

  _$GtasksUpdateDetailsData._(
      {required this.G__typename, required this.type, required this.tasks})
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
        tasks == other.tasks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, tasks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtasksUpdateDetailsData')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('tasks', tasks))
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

  ListBuilder<GtasksUpdateDetailsData_tasks>? _tasks;
  ListBuilder<GtasksUpdateDetailsData_tasks> get tasks =>
      _$this._tasks ??= ListBuilder<GtasksUpdateDetailsData_tasks>();
  set tasks(ListBuilder<GtasksUpdateDetailsData_tasks>? tasks) =>
      _$this._tasks = tasks;

  GtasksUpdateDetailsDataBuilder() {
    GtasksUpdateDetailsData._initializeBuilder(this);
  }

  GtasksUpdateDetailsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _tasks = $v.tasks.toBuilder();
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
            tasks: tasks.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        tasks.build();
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

class _$GtasksUpdateDetailsData_tasks extends GtasksUpdateDetailsData_tasks {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String text;
  @override
  final bool completed;

  factory _$GtasksUpdateDetailsData_tasks(
          [void Function(GtasksUpdateDetailsData_tasksBuilder)? updates]) =>
      (GtasksUpdateDetailsData_tasksBuilder()..update(updates))._build();

  _$GtasksUpdateDetailsData_tasks._(
      {required this.G__typename,
      required this.id,
      required this.text,
      required this.completed})
      : super._();
  @override
  GtasksUpdateDetailsData_tasks rebuild(
          void Function(GtasksUpdateDetailsData_tasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtasksUpdateDetailsData_tasksBuilder toBuilder() =>
      GtasksUpdateDetailsData_tasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtasksUpdateDetailsData_tasks &&
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
    return (newBuiltValueToStringHelper(r'GtasksUpdateDetailsData_tasks')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('text', text)
          ..add('completed', completed))
        .toString();
  }
}

class GtasksUpdateDetailsData_tasksBuilder
    implements
        Builder<GtasksUpdateDetailsData_tasks,
            GtasksUpdateDetailsData_tasksBuilder> {
  _$GtasksUpdateDetailsData_tasks? _$v;

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

  GtasksUpdateDetailsData_tasksBuilder() {
    GtasksUpdateDetailsData_tasks._initializeBuilder(this);
  }

  GtasksUpdateDetailsData_tasksBuilder get _$this {
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
  void replace(GtasksUpdateDetailsData_tasks other) {
    _$v = other as _$GtasksUpdateDetailsData_tasks;
  }

  @override
  void update(void Function(GtasksUpdateDetailsData_tasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtasksUpdateDetailsData_tasks build() => _build();

  _$GtasksUpdateDetailsData_tasks _build() {
    final _$result = _$v ??
        _$GtasksUpdateDetailsData_tasks._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GtasksUpdateDetailsData_tasks', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GtasksUpdateDetailsData_tasks', 'id'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'GtasksUpdateDetailsData_tasks', 'text'),
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'GtasksUpdateDetailsData_tasks', 'completed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
