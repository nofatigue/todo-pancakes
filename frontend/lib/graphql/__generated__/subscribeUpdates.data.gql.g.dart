// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribeUpdates.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsubscribeTasksUpdatesData> _$gsubscribeTasksUpdatesDataSerializer =
    _$GsubscribeTasksUpdatesDataSerializer();
Serializer<GsubscribeTasksUpdatesData_tasksUpdates>
    _$gsubscribeTasksUpdatesDataTasksUpdatesSerializer =
    _$GsubscribeTasksUpdatesData_tasksUpdatesSerializer();

class _$GsubscribeTasksUpdatesDataSerializer
    implements StructuredSerializer<GsubscribeTasksUpdatesData> {
  @override
  final Iterable<Type> types = const [
    GsubscribeTasksUpdatesData,
    _$GsubscribeTasksUpdatesData
  ];
  @override
  final String wireName = 'GsubscribeTasksUpdatesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsubscribeTasksUpdatesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'tasksUpdates',
      serializers.serialize(object.tasksUpdates,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GsubscribeTasksUpdatesData_tasksUpdates)])),
    ];

    return result;
  }

  @override
  GsubscribeTasksUpdatesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GsubscribeTasksUpdatesDataBuilder();

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
        case 'tasksUpdates':
          result.tasksUpdates.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GsubscribeTasksUpdatesData_tasksUpdates)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GsubscribeTasksUpdatesData_tasksUpdatesSerializer
    implements StructuredSerializer<GsubscribeTasksUpdatesData_tasksUpdates> {
  @override
  final Iterable<Type> types = const [
    GsubscribeTasksUpdatesData_tasksUpdates,
    _$GsubscribeTasksUpdatesData_tasksUpdates
  ];
  @override
  final String wireName = 'GsubscribeTasksUpdatesData_tasksUpdates';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsubscribeTasksUpdatesData_tasksUpdates object,
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
  GsubscribeTasksUpdatesData_tasksUpdates deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GsubscribeTasksUpdatesData_tasksUpdatesBuilder();

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

class _$GsubscribeTasksUpdatesData extends GsubscribeTasksUpdatesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GsubscribeTasksUpdatesData_tasksUpdates> tasksUpdates;

  factory _$GsubscribeTasksUpdatesData(
          [void Function(GsubscribeTasksUpdatesDataBuilder)? updates]) =>
      (GsubscribeTasksUpdatesDataBuilder()..update(updates))._build();

  _$GsubscribeTasksUpdatesData._(
      {required this.G__typename, required this.tasksUpdates})
      : super._();
  @override
  GsubscribeTasksUpdatesData rebuild(
          void Function(GsubscribeTasksUpdatesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsubscribeTasksUpdatesDataBuilder toBuilder() =>
      GsubscribeTasksUpdatesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsubscribeTasksUpdatesData &&
        G__typename == other.G__typename &&
        tasksUpdates == other.tasksUpdates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, tasksUpdates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GsubscribeTasksUpdatesData')
          ..add('G__typename', G__typename)
          ..add('tasksUpdates', tasksUpdates))
        .toString();
  }
}

class GsubscribeTasksUpdatesDataBuilder
    implements
        Builder<GsubscribeTasksUpdatesData, GsubscribeTasksUpdatesDataBuilder> {
  _$GsubscribeTasksUpdatesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GsubscribeTasksUpdatesData_tasksUpdates>? _tasksUpdates;
  ListBuilder<GsubscribeTasksUpdatesData_tasksUpdates> get tasksUpdates =>
      _$this._tasksUpdates ??=
          ListBuilder<GsubscribeTasksUpdatesData_tasksUpdates>();
  set tasksUpdates(
          ListBuilder<GsubscribeTasksUpdatesData_tasksUpdates>? tasksUpdates) =>
      _$this._tasksUpdates = tasksUpdates;

  GsubscribeTasksUpdatesDataBuilder() {
    GsubscribeTasksUpdatesData._initializeBuilder(this);
  }

  GsubscribeTasksUpdatesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _tasksUpdates = $v.tasksUpdates.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GsubscribeTasksUpdatesData other) {
    _$v = other as _$GsubscribeTasksUpdatesData;
  }

  @override
  void update(void Function(GsubscribeTasksUpdatesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsubscribeTasksUpdatesData build() => _build();

  _$GsubscribeTasksUpdatesData _build() {
    _$GsubscribeTasksUpdatesData _$result;
    try {
      _$result = _$v ??
          _$GsubscribeTasksUpdatesData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GsubscribeTasksUpdatesData', 'G__typename'),
            tasksUpdates: tasksUpdates.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasksUpdates';
        tasksUpdates.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GsubscribeTasksUpdatesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GsubscribeTasksUpdatesData_tasksUpdates
    extends GsubscribeTasksUpdatesData_tasksUpdates {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String text;
  @override
  final bool completed;

  factory _$GsubscribeTasksUpdatesData_tasksUpdates(
          [void Function(GsubscribeTasksUpdatesData_tasksUpdatesBuilder)?
              updates]) =>
      (GsubscribeTasksUpdatesData_tasksUpdatesBuilder()..update(updates))
          ._build();

  _$GsubscribeTasksUpdatesData_tasksUpdates._(
      {required this.G__typename,
      required this.id,
      required this.text,
      required this.completed})
      : super._();
  @override
  GsubscribeTasksUpdatesData_tasksUpdates rebuild(
          void Function(GsubscribeTasksUpdatesData_tasksUpdatesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsubscribeTasksUpdatesData_tasksUpdatesBuilder toBuilder() =>
      GsubscribeTasksUpdatesData_tasksUpdatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsubscribeTasksUpdatesData_tasksUpdates &&
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
    return (newBuiltValueToStringHelper(
            r'GsubscribeTasksUpdatesData_tasksUpdates')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('text', text)
          ..add('completed', completed))
        .toString();
  }
}

class GsubscribeTasksUpdatesData_tasksUpdatesBuilder
    implements
        Builder<GsubscribeTasksUpdatesData_tasksUpdates,
            GsubscribeTasksUpdatesData_tasksUpdatesBuilder> {
  _$GsubscribeTasksUpdatesData_tasksUpdates? _$v;

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

  GsubscribeTasksUpdatesData_tasksUpdatesBuilder() {
    GsubscribeTasksUpdatesData_tasksUpdates._initializeBuilder(this);
  }

  GsubscribeTasksUpdatesData_tasksUpdatesBuilder get _$this {
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
  void replace(GsubscribeTasksUpdatesData_tasksUpdates other) {
    _$v = other as _$GsubscribeTasksUpdatesData_tasksUpdates;
  }

  @override
  void update(
      void Function(GsubscribeTasksUpdatesData_tasksUpdatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsubscribeTasksUpdatesData_tasksUpdates build() => _build();

  _$GsubscribeTasksUpdatesData_tasksUpdates _build() {
    final _$result = _$v ??
        _$GsubscribeTasksUpdatesData_tasksUpdates._(
          G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
              r'GsubscribeTasksUpdatesData_tasksUpdates', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GsubscribeTasksUpdatesData_tasksUpdates', 'id'),
          text: BuiltValueNullFieldError.checkNotNull(
              text, r'GsubscribeTasksUpdatesData_tasksUpdates', 'text'),
          completed: BuiltValueNullFieldError.checkNotNull(completed,
              r'GsubscribeTasksUpdatesData_tasksUpdates', 'completed'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
