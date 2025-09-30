// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taskDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTaskDetailsVars> _$gTaskDetailsVarsSerializer =
    _$GTaskDetailsVarsSerializer();

class _$GTaskDetailsVarsSerializer
    implements StructuredSerializer<GTaskDetailsVars> {
  @override
  final Iterable<Type> types = const [GTaskDetailsVars, _$GTaskDetailsVars];
  @override
  final String wireName = 'GTaskDetailsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GTaskDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GTaskDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GTaskDetailsVarsBuilder().build();
  }
}

class _$GTaskDetailsVars extends GTaskDetailsVars {
  factory _$GTaskDetailsVars(
          [void Function(GTaskDetailsVarsBuilder)? updates]) =>
      (GTaskDetailsVarsBuilder()..update(updates))._build();

  _$GTaskDetailsVars._() : super._();
  @override
  GTaskDetailsVars rebuild(void Function(GTaskDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTaskDetailsVarsBuilder toBuilder() =>
      GTaskDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTaskDetailsVars;
  }

  @override
  int get hashCode {
    return 784321413;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GTaskDetailsVars').toString();
  }
}

class GTaskDetailsVarsBuilder
    implements Builder<GTaskDetailsVars, GTaskDetailsVarsBuilder> {
  _$GTaskDetailsVars? _$v;

  GTaskDetailsVarsBuilder();

  @override
  void replace(GTaskDetailsVars other) {
    _$v = other as _$GTaskDetailsVars;
  }

  @override
  void update(void Function(GTaskDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GTaskDetailsVars build() => _build();

  _$GTaskDetailsVars _build() {
    final _$result = _$v ?? _$GTaskDetailsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
