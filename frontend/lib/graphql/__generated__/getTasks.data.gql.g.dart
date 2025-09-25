// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getTasks.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetTasksData> _$ggetTasksDataSerializer =
    _$GgetTasksDataSerializer();
Serializer<GgetTasksData_tasks> _$ggetTasksDataTasksSerializer =
    _$GgetTasksData_tasksSerializer();
Serializer<GTaskDetailsData> _$gTaskDetailsDataSerializer =
    _$GTaskDetailsDataSerializer();

class _$GgetTasksDataSerializer implements StructuredSerializer<GgetTasksData> {
  @override
  final Iterable<Type> types = const [GgetTasksData, _$GgetTasksData];
  @override
  final String wireName = 'GgetTasksData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetTasksData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tasks',
      serializers.serialize(object.tasks,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GgetTasksData_tasks)])),
    ];

    return result;
  }

  @override
  GgetTasksData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GgetTasksDataBuilder();

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
        case 'tasks':
          result.tasks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GgetTasksData_tasks)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GgetTasksData_tasksSerializer
    implements StructuredSerializer<GgetTasksData_tasks> {
  @override
  final Iterable<Type> types = const [
    GgetTasksData_tasks,
    _$GgetTasksData_tasks
  ];
  @override
  final String wireName = 'GgetTasksData_tasks';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GgetTasksData_tasks object,
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
  GgetTasksData_tasks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GgetTasksData_tasksBuilder();

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

class _$GTaskDetailsDataSerializer
    implements StructuredSerializer<GTaskDetailsData> {
  @override
  final Iterable<Type> types = const [GTaskDetailsData, _$GTaskDetailsData];
  @override
  final String wireName = 'GTaskDetailsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTaskDetailsData object,
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
  GTaskDetailsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GTaskDetailsDataBuilder();

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

class _$GgetTasksData extends GgetTasksData {
  @override
  final String G__typename;
  @override
  final BuiltList<GgetTasksData_tasks> tasks;

  factory _$GgetTasksData([void Function(GgetTasksDataBuilder)? updates]) =>
      (GgetTasksDataBuilder()..update(updates))._build();

  _$GgetTasksData._({required this.G__typename, required this.tasks})
      : super._();
  @override
  GgetTasksData rebuild(void Function(GgetTasksDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetTasksDataBuilder toBuilder() => GgetTasksDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetTasksData &&
        G__typename == other.G__typename &&
        tasks == other.tasks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, tasks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GgetTasksData')
          ..add('G__typename', G__typename)
          ..add('tasks', tasks))
        .toString();
  }
}

class GgetTasksDataBuilder
    implements Builder<GgetTasksData, GgetTasksDataBuilder> {
  _$GgetTasksData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GgetTasksData_tasks>? _tasks;
  ListBuilder<GgetTasksData_tasks> get tasks =>
      _$this._tasks ??= ListBuilder<GgetTasksData_tasks>();
  set tasks(ListBuilder<GgetTasksData_tasks>? tasks) => _$this._tasks = tasks;

  GgetTasksDataBuilder() {
    GgetTasksData._initializeBuilder(this);
  }

  GgetTasksDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tasks = $v.tasks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GgetTasksData other) {
    _$v = other as _$GgetTasksData;
  }

  @override
  void update(void Function(GgetTasksDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetTasksData build() => _build();

  _$GgetTasksData _build() {
    _$GgetTasksData _$result;
    try {
      _$result = _$v ??
          _$GgetTasksData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GgetTasksData', 'G__typename'),
            tasks: tasks.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        tasks.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GgetTasksData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GgetTasksData_tasks extends GgetTasksData_tasks {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String text;
  @override
  final bool completed;

  factory _$GgetTasksData_tasks(
          [void Function(GgetTasksData_tasksBuilder)? updates]) =>
      (GgetTasksData_tasksBuilder()..update(updates))._build();

  _$GgetTasksData_tasks._(
      {required this.G__typename,
      required this.id,
      required this.text,
      required this.completed})
      : super._();
  @override
  GgetTasksData_tasks rebuild(
          void Function(GgetTasksData_tasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetTasksData_tasksBuilder toBuilder() =>
      GgetTasksData_tasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetTasksData_tasks &&
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
    return (newBuiltValueToStringHelper(r'GgetTasksData_tasks')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('text', text)
          ..add('completed', completed))
        .toString();
  }
}

class GgetTasksData_tasksBuilder
    implements Builder<GgetTasksData_tasks, GgetTasksData_tasksBuilder> {
  _$GgetTasksData_tasks? _$v;

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

  GgetTasksData_tasksBuilder() {
    GgetTasksData_tasks._initializeBuilder(this);
  }

  GgetTasksData_tasksBuilder get _$this {
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
  void replace(GgetTasksData_tasks other) {
    _$v = other as _$GgetTasksData_tasks;
  }

  @override
  void update(void Function(GgetTasksData_tasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetTasksData_tasks build() => _build();

  _$GgetTasksData_tasks _build() {
    final _$result = _$v ??
        _$GgetTasksData_tasks._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GgetTasksData_tasks', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GgetTasksData_tasks', 'id'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'GgetTasksData_tasks', 'text'),
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'GgetTasksData_tasks', 'completed'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GTaskDetailsData extends GTaskDetailsData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String text;
  @override
  final bool completed;

  factory _$GTaskDetailsData(
          [void Function(GTaskDetailsDataBuilder)? updates]) =>
      (GTaskDetailsDataBuilder()..update(updates))._build();

  _$GTaskDetailsData._(
      {required this.G__typename,
      required this.id,
      required this.text,
      required this.completed})
      : super._();
  @override
  GTaskDetailsData rebuild(void Function(GTaskDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTaskDetailsDataBuilder toBuilder() =>
      GTaskDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTaskDetailsData &&
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
    return (newBuiltValueToStringHelper(r'GTaskDetailsData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('text', text)
          ..add('completed', completed))
        .toString();
  }
}

class GTaskDetailsDataBuilder
    implements Builder<GTaskDetailsData, GTaskDetailsDataBuilder> {
  _$GTaskDetailsData? _$v;

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

  GTaskDetailsDataBuilder() {
    GTaskDetailsData._initializeBuilder(this);
  }

  GTaskDetailsDataBuilder get _$this {
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
  void replace(GTaskDetailsData other) {
    _$v = other as _$GTaskDetailsData;
  }

  @override
  void update(void Function(GTaskDetailsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTaskDetailsData build() => _build();

  _$GTaskDetailsData _build() {
    final _$result = _$v ??
        _$GTaskDetailsData._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GTaskDetailsData', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GTaskDetailsData', 'id'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'GTaskDetailsData', 'text'),
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'GTaskDetailsData', 'completed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
