// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribeUpdates.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GsubscribeTasksUpdatesVars> _$gsubscribeTasksUpdatesVarsSerializer =
    _$GsubscribeTasksUpdatesVarsSerializer();

class _$GsubscribeTasksUpdatesVarsSerializer
    implements StructuredSerializer<GsubscribeTasksUpdatesVars> {
  @override
  final Iterable<Type> types = const [
    GsubscribeTasksUpdatesVars,
    _$GsubscribeTasksUpdatesVars
  ];
  @override
  final String wireName = 'GsubscribeTasksUpdatesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GsubscribeTasksUpdatesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GsubscribeTasksUpdatesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return GsubscribeTasksUpdatesVarsBuilder().build();
  }
}

class _$GsubscribeTasksUpdatesVars extends GsubscribeTasksUpdatesVars {
  factory _$GsubscribeTasksUpdatesVars(
          [void Function(GsubscribeTasksUpdatesVarsBuilder)? updates]) =>
      (GsubscribeTasksUpdatesVarsBuilder()..update(updates))._build();

  _$GsubscribeTasksUpdatesVars._() : super._();
  @override
  GsubscribeTasksUpdatesVars rebuild(
          void Function(GsubscribeTasksUpdatesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GsubscribeTasksUpdatesVarsBuilder toBuilder() =>
      GsubscribeTasksUpdatesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GsubscribeTasksUpdatesVars;
  }

  @override
  int get hashCode {
    return 182310350;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GsubscribeTasksUpdatesVars')
        .toString();
  }
}

class GsubscribeTasksUpdatesVarsBuilder
    implements
        Builder<GsubscribeTasksUpdatesVars, GsubscribeTasksUpdatesVarsBuilder> {
  _$GsubscribeTasksUpdatesVars? _$v;

  GsubscribeTasksUpdatesVarsBuilder();

  @override
  void replace(GsubscribeTasksUpdatesVars other) {
    _$v = other as _$GsubscribeTasksUpdatesVars;
  }

  @override
  void update(void Function(GsubscribeTasksUpdatesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GsubscribeTasksUpdatesVars build() => _build();

  _$GsubscribeTasksUpdatesVars _build() {
    final _$result = _$v ?? _$GsubscribeTasksUpdatesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
