// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GFoo _$gFooBAR = const GFoo._('BAR');
const GFoo _$gFooBAZ = const GFoo._('BAZ');

GFoo _$gFooValueOf(String name) {
  switch (name) {
    case 'BAR':
      return _$gFooBAR;
    case 'BAZ':
      return _$gFooBAZ;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GFoo> _$gFooValues = BuiltSet<GFoo>(const <GFoo>[
  _$gFooBAR,
  _$gFooBAZ,
]);

Serializer<GFoo> _$gFooSerializer = _$GFooSerializer();

class _$GFooSerializer implements PrimitiveSerializer<GFoo> {
  @override
  final Iterable<Type> types = const <Type>[GFoo];
  @override
  final String wireName = 'GFoo';

  @override
  Object serialize(Serializers serializers, GFoo object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GFoo deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GFoo.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
