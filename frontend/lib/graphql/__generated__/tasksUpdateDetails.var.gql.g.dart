// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasksUpdateDetails.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GtasksUpdateDetailsVars> _$gtasksUpdateDetailsVarsSerializer =
    _$GtasksUpdateDetailsVarsSerializer();

class _$GtasksUpdateDetailsVarsSerializer
    implements StructuredSerializer<GtasksUpdateDetailsVars> {
  @override
  final Iterable<Type> types = const [
    GtasksUpdateDetailsVars,
    _$GtasksUpdateDetailsVars
  ];
  @override
  final String wireName = 'GtasksUpdateDetailsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GtasksUpdateDetailsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GtasksUpdateDetailsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GtasksUpdateDetailsVarsBuilder().build();
  }
}

class _$GtasksUpdateDetailsVars extends GtasksUpdateDetailsVars {
  factory _$GtasksUpdateDetailsVars(
          [void Function(GtasksUpdateDetailsVarsBuilder)? updates]) =>
      (GtasksUpdateDetailsVarsBuilder()..update(updates))._build();

  _$GtasksUpdateDetailsVars._() : super._();
  @override
  GtasksUpdateDetailsVars rebuild(
          void Function(GtasksUpdateDetailsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GtasksUpdateDetailsVarsBuilder toBuilder() =>
      GtasksUpdateDetailsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GtasksUpdateDetailsVars;
  }

  @override
  int get hashCode {
    return 773734988;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GtasksUpdateDetailsVars').toString();
  }
}

class GtasksUpdateDetailsVarsBuilder
    implements
        Builder<GtasksUpdateDetailsVars, GtasksUpdateDetailsVarsBuilder> {
  _$GtasksUpdateDetailsVars? _$v;

  GtasksUpdateDetailsVarsBuilder();

  @override
  void replace(GtasksUpdateDetailsVars other) {
    _$v = other as _$GtasksUpdateDetailsVars;
  }

  @override
  void update(void Function(GtasksUpdateDetailsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GtasksUpdateDetailsVars build() => _build();

  _$GtasksUpdateDetailsVars _build() {
    final _$result = _$v ?? _$GtasksUpdateDetailsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
