// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;

part 'tasksUpdateDetails.var.gql.g.dart';

abstract class GtasksUpdateDetailsVars
    implements Built<GtasksUpdateDetailsVars, GtasksUpdateDetailsVarsBuilder> {
  GtasksUpdateDetailsVars._();

  factory GtasksUpdateDetailsVars(
          [void Function(GtasksUpdateDetailsVarsBuilder b) updates]) =
      _$GtasksUpdateDetailsVars;

  static Serializer<GtasksUpdateDetailsVars> get serializer =>
      _$gtasksUpdateDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtasksUpdateDetailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtasksUpdateDetailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtasksUpdateDetailsVars.serializer,
        json,
      );
}
