// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
    as _i2;

part 'getTasks.data.gql.g.dart';

abstract class GgetTasksData
    implements Built<GgetTasksData, GgetTasksDataBuilder> {
  GgetTasksData._();

  factory GgetTasksData([void Function(GgetTasksDataBuilder b) updates]) =
      _$GgetTasksData;

  static void _initializeBuilder(GgetTasksDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GgetTasksData_tasks> get tasks;
  static Serializer<GgetTasksData> get serializer => _$ggetTasksDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTasksData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTasksData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTasksData.serializer,
        json,
      );
}

abstract class GgetTasksData_tasks
    implements
        Built<GgetTasksData_tasks, GgetTasksData_tasksBuilder>,
        _i2.GTaskDetails {
  GgetTasksData_tasks._();

  factory GgetTasksData_tasks(
          [void Function(GgetTasksData_tasksBuilder b) updates]) =
      _$GgetTasksData_tasks;

  static void _initializeBuilder(GgetTasksData_tasksBuilder b) =>
      b..G__typename = 'TodoItem';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  int get id;
  @override
  String get text;
  @override
  bool get completed;
  static Serializer<GgetTasksData_tasks> get serializer =>
      _$ggetTasksDataTasksSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GgetTasksData_tasks.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTasksData_tasks? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GgetTasksData_tasks.serializer,
        json,
      );
}
