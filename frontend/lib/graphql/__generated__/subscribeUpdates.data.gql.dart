// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
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
  BuiltList<GsubscribeTasksUpdatesData_tasksUpdates> get tasksUpdates;
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
        _i2.GTaskDetails {
  GsubscribeTasksUpdatesData_tasksUpdates._();

  factory GsubscribeTasksUpdatesData_tasksUpdates(
      [void Function(GsubscribeTasksUpdatesData_tasksUpdatesBuilder b)
          updates]) = _$GsubscribeTasksUpdatesData_tasksUpdates;

  static void _initializeBuilder(
          GsubscribeTasksUpdatesData_tasksUpdatesBuilder b) =>
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
