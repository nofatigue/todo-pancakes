// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasksUpdateDetails.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtasksUpdateDetailsReq> _$gtasksUpdateDetailsReqSerializer =
    _$GtasksUpdateDetailsReqSerializer();

class _$GtasksUpdateDetailsReqSerializer
    implements StructuredSerializer<GtasksUpdateDetailsReq> {
  @override
  final Iterable<Type> types = const [
    GtasksUpdateDetailsReq,
    _$GtasksUpdateDetailsReq
  ];
  @override
  final String wireName = 'GtasksUpdateDetailsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtasksUpdateDetailsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GtasksUpdateDetailsVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GtasksUpdateDetailsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = GtasksUpdateDetailsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GtasksUpdateDetailsVars))!
              as _i3.GtasksUpdateDetailsVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GtasksUpdateDetailsReq extends GtasksUpdateDetailsReq {
  @override
  final _i3.GtasksUpdateDetailsVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GtasksUpdateDetailsReq(
          [void Function(GtasksUpdateDetailsReqBuilder)? updates]) =>
      (GtasksUpdateDetailsReqBuilder()..update(updates))._build();

  _$GtasksUpdateDetailsReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._();
  @override
  GtasksUpdateDetailsReq rebuild(
          void Function(GtasksUpdateDetailsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtasksUpdateDetailsReqBuilder toBuilder() =>
      GtasksUpdateDetailsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtasksUpdateDetailsReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GtasksUpdateDetailsReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GtasksUpdateDetailsReqBuilder
    implements Builder<GtasksUpdateDetailsReq, GtasksUpdateDetailsReqBuilder> {
  _$GtasksUpdateDetailsReq? _$v;

  _i3.GtasksUpdateDetailsVarsBuilder? _vars;
  _i3.GtasksUpdateDetailsVarsBuilder get vars =>
      _$this._vars ??= _i3.GtasksUpdateDetailsVarsBuilder();
  set vars(_i3.GtasksUpdateDetailsVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GtasksUpdateDetailsReqBuilder() {
    GtasksUpdateDetailsReq._initializeBuilder(this);
  }

  GtasksUpdateDetailsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GtasksUpdateDetailsReq other) {
    _$v = other as _$GtasksUpdateDetailsReq;
  }

  @override
  void update(void Function(GtasksUpdateDetailsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtasksUpdateDetailsReq build() => _build();

  _$GtasksUpdateDetailsReq _build() {
    _$GtasksUpdateDetailsReq _$result;
    try {
      _$result = _$v ??
          _$GtasksUpdateDetailsReq._(
            vars: vars.build(),
            document: BuiltValueNullFieldError.checkNotNull(
                document, r'GtasksUpdateDetailsReq', 'document'),
            fragmentName: fragmentName,
            idFields: BuiltValueNullFieldError.checkNotNull(
                idFields, r'GtasksUpdateDetailsReq', 'idFields'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GtasksUpdateDetailsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
