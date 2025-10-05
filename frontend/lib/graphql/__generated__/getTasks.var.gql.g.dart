// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getTasks.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GgetTasksVars> _$ggetTasksVarsSerializer =
    _$GgetTasksVarsSerializer();

class _$GgetTasksVarsSerializer implements StructuredSerializer<GgetTasksVars> {
  @override
  final Iterable<Type> types = const [GgetTasksVars, _$GgetTasksVars];
  @override
  final String wireName = 'GgetTasksVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GgetTasksVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GgetTasksVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GgetTasksVarsBuilder().build();
  }
}

class _$GgetTasksVars extends GgetTasksVars {
  factory _$GgetTasksVars([void Function(GgetTasksVarsBuilder)? updates]) =>
      (GgetTasksVarsBuilder()..update(updates))._build();

  _$GgetTasksVars._() : super._();
  @override
  GgetTasksVars rebuild(void Function(GgetTasksVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GgetTasksVarsBuilder toBuilder() => GgetTasksVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GgetTasksVars;
  }

  @override
  int get hashCode {
    return 904897636;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GgetTasksVars').toString();
  }
}

class GgetTasksVarsBuilder
    implements Builder<GgetTasksVars, GgetTasksVarsBuilder> {
  _$GgetTasksVars? _$v;

  GgetTasksVarsBuilder();

  @override
  void replace(GgetTasksVars other) {
    _$v = other as _$GgetTasksVars;
  }

  @override
  void update(void Function(GgetTasksVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GgetTasksVars build() => _build();

  _$GgetTasksVars _build() {
    final _$result = _$v ?? _$GgetTasksVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
