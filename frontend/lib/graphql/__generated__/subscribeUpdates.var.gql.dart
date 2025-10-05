// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;

part 'subscribeUpdates.var.gql.g.dart';

abstract class GsubscribeTasksUpdatesVars
    implements
        Built<GsubscribeTasksUpdatesVars, GsubscribeTasksUpdatesVarsBuilder> {
  GsubscribeTasksUpdatesVars._();

  factory GsubscribeTasksUpdatesVars(
          [void Function(GsubscribeTasksUpdatesVarsBuilder b) updates]) =
      _$GsubscribeTasksUpdatesVars;

  static Serializer<GsubscribeTasksUpdatesVars> get serializer =>
      _$gsubscribeTasksUpdatesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubscribeTasksUpdatesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubscribeTasksUpdatesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubscribeTasksUpdatesVars.serializer,
        json,
      );
}
