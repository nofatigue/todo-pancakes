// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;

part 'getTasks.var.gql.g.dart';

abstract class GgetTasksVars
    implements Built<GgetTasksVars, GgetTasksVarsBuilder> {
  GgetTasksVars._();

  factory GgetTasksVars([void Function(GgetTasksVarsBuilder b) updates]) =
      _$GgetTasksVars;

  static Serializer<GgetTasksVars> get serializer => _$ggetTasksVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTasksVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTasksVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTasksVars.serializer,
        json,
      );
}

abstract class GTaskDetailsVars
    implements Built<GTaskDetailsVars, GTaskDetailsVarsBuilder> {
  GTaskDetailsVars._();

  factory GTaskDetailsVars([void Function(GTaskDetailsVarsBuilder b) updates]) =
      _$GTaskDetailsVars;

  static Serializer<GTaskDetailsVars> get serializer =>
      _$gTaskDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTaskDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTaskDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTaskDetailsVars.serializer,
        json,
      );
}
