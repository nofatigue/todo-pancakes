// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i2;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
    as _i1;

part 'tasksUpdateDetails.data.gql.g.dart';

abstract class GtasksUpdateDetails {
  String get G__typename;
  String get type;
  GtasksUpdateDetails_task get task;
  Map<String, dynamic> toJson();
}

abstract class GtasksUpdateDetails_task implements _i1.GTaskDetails {
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
  GtasksUpdateDetailsData_task get task;
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

abstract class GtasksUpdateDetailsData_task
    implements
        Built<GtasksUpdateDetailsData_task,
            GtasksUpdateDetailsData_taskBuilder>,
        GtasksUpdateDetails_task,
        _i1.GTaskDetails {
  GtasksUpdateDetailsData_task._();

  factory GtasksUpdateDetailsData_task(
          [void Function(GtasksUpdateDetailsData_taskBuilder b) updates]) =
      _$GtasksUpdateDetailsData_task;

  static void _initializeBuilder(GtasksUpdateDetailsData_taskBuilder b) =>
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
  static Serializer<GtasksUpdateDetailsData_task> get serializer =>
      _$gtasksUpdateDetailsDataTaskSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GtasksUpdateDetailsData_task.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtasksUpdateDetailsData_task? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GtasksUpdateDetailsData_task.serializer,
        json,
      );
}
