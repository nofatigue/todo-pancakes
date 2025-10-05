// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
    as _i3;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.data.gql.dart'
    as _i2;

part 'subscribeUpdates.data.gql.g.dart';

abstract class GsubscribeTasksUpdatesData
    implements
        Built<GsubscribeTasksUpdatesData, GsubscribeTasksUpdatesDataBuilder> {
  GsubscribeTasksUpdatesData._();

  factory GsubscribeTasksUpdatesData(
          [void Function(GsubscribeTasksUpdatesDataBuilder b) updates]) =
      _$GsubscribeTasksUpdatesData;

  static void _initializeBuilder(GsubscribeTasksUpdatesDataBuilder b) =>
      b..G__typename = 'Subscription';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GsubscribeTasksUpdatesData_tasksUpdates get tasksUpdates;
  static Serializer<GsubscribeTasksUpdatesData> get serializer =>
      _$gsubscribeTasksUpdatesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubscribeTasksUpdatesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubscribeTasksUpdatesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubscribeTasksUpdatesData.serializer,
        json,
      );
}

abstract class GsubscribeTasksUpdatesData_tasksUpdates
    implements
        Built<GsubscribeTasksUpdatesData_tasksUpdates,
            GsubscribeTasksUpdatesData_tasksUpdatesBuilder>,
        _i2.GtasksUpdateDetails {
  GsubscribeTasksUpdatesData_tasksUpdates._();

  factory GsubscribeTasksUpdatesData_tasksUpdates(
      [void Function(GsubscribeTasksUpdatesData_tasksUpdatesBuilder b)
          updates]) = _$GsubscribeTasksUpdatesData_tasksUpdates;

  static void _initializeBuilder(
          GsubscribeTasksUpdatesData_tasksUpdatesBuilder b) =>
      b..G__typename = 'TasksUpdate';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get type;
  @override
  BuiltList<GsubscribeTasksUpdatesData_tasksUpdates_tasks> get tasks;
  static Serializer<GsubscribeTasksUpdatesData_tasksUpdates> get serializer =>
      _$gsubscribeTasksUpdatesDataTasksUpdatesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubscribeTasksUpdatesData_tasksUpdates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubscribeTasksUpdatesData_tasksUpdates? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubscribeTasksUpdatesData_tasksUpdates.serializer,
        json,
      );
}

abstract class GsubscribeTasksUpdatesData_tasksUpdates_tasks
    implements
        Built<GsubscribeTasksUpdatesData_tasksUpdates_tasks,
            GsubscribeTasksUpdatesData_tasksUpdates_tasksBuilder>,
        _i2.GtasksUpdateDetails_tasks,
        _i3.GTaskDetails {
  GsubscribeTasksUpdatesData_tasksUpdates_tasks._();

  factory GsubscribeTasksUpdatesData_tasksUpdates_tasks(
      [void Function(GsubscribeTasksUpdatesData_tasksUpdates_tasksBuilder b)
          updates]) = _$GsubscribeTasksUpdatesData_tasksUpdates_tasks;

  static void _initializeBuilder(
          GsubscribeTasksUpdatesData_tasksUpdates_tasksBuilder b) =>
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
  static Serializer<GsubscribeTasksUpdatesData_tasksUpdates_tasks>
      get serializer => _$gsubscribeTasksUpdatesDataTasksUpdatesTasksSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GsubscribeTasksUpdatesData_tasksUpdates_tasks.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubscribeTasksUpdatesData_tasksUpdates_tasks? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GsubscribeTasksUpdatesData_tasksUpdates_tasks.serializer,
        json,
      );
}
