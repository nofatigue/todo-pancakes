// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.schema.gql.g.dart';

class GFoo extends EnumClass {
  const GFoo._(String name) : super(name);

  static const GFoo BAR = _$gFooBAR;

  static const GFoo BAZ = _$gFooBAZ;

  static Serializer<GFoo> get serializer => _$gFooSerializer;

  static BuiltSet<GFoo> get values => _$gFooValues;

  static GFoo valueOf(String name) => _$gFooValueOf(name);
}

const Map<String, Set<String>> possibleTypesMap = {};
