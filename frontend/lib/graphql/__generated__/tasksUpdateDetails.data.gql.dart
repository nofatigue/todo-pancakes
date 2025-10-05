// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i2;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
    as _i1;

part 'tasksUpdateDetails.data.gql.g.dart';

abstract class GtasksUpdateDetails {
  String get G__typename;
  String get type;
  BuiltList<GtasksUpdateDetails_tasks> get tasks;
  Map<String, dynamic> toJson();
}

abstract class GtasksUpdateDetails_tasks implements _i1.GTaskDetails {
  @override
  String get G__typename;
  @override
  int get id;
  @override
  String get text;
  @override
  bool get completed;
  @override
  Map<String, dynamic> toJson();
}

abstract class GtasksUpdateDetailsData
    implements
        Built<GtasksUpdateDetailsData, GtasksUpdateDetailsDataBuilder>,
        GtasksUpdateDetails {
  GtasksUpdateDetailsData._();

  factory GtasksUpdateDetailsData(
          [void Function(GtasksUpdateDetailsDataBuilder b) updates]) =
      _$GtasksUpdateDetailsData;

  static void _initializeBuilder(GtasksUpdateDetailsDataBuilder b) =>
      b..G__typename = 'TasksUpdate';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get type;
  @override
  BuiltList<GtasksUpdateDetailsData_tasks> get tasks;
  static Serializer<GtasksUpdateDetailsData> get serializer =>
      _$gtasksUpdateDetailsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GtasksUpdateDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtasksUpdateDetailsData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GtasksUpdateDetailsData.serializer,
        json,
      );
}

abstract class GtasksUpdateDetailsData_tasks
    implements
        Built<GtasksUpdateDetailsData_tasks,
            GtasksUpdateDetailsData_tasksBuilder>,
        GtasksUpdateDetails_tasks,
        _i1.GTaskDetails {
  GtasksUpdateDetailsData_tasks._();

  factory GtasksUpdateDetailsData_tasks(
          [void Function(GtasksUpdateDetailsData_tasksBuilder b) updates]) =
      _$GtasksUpdateDetailsData_tasks;

  static void _initializeBuilder(GtasksUpdateDetailsData_tasksBuilder b) =>
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
  static Serializer<GtasksUpdateDetailsData_tasks> get serializer =>
      _$gtasksUpdateDetailsDataTasksSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GtasksUpdateDetailsData_tasks.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtasksUpdateDetailsData_tasks? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GtasksUpdateDetailsData_tasks.serializer,
        json,
      );
}
