// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart' show GFoo;
import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart'
    show GgetTasksData, GgetTasksData_tasks;
import 'package:frontend/graphql/__generated__/getTasks.req.gql.dart'
    show GgetTasksReq;
import 'package:frontend/graphql/__generated__/getTasks.var.gql.dart'
    show GgetTasksVars;
import 'package:frontend/graphql/__generated__/subscribeUpdates.data.gql.dart'
    show
        GsubscribeTasksUpdatesData,
        GsubscribeTasksUpdatesData_tasksUpdates,
        GsubscribeTasksUpdatesData_tasksUpdates_tasks;
import 'package:frontend/graphql/__generated__/subscribeUpdates.req.gql.dart'
    show GsubscribeTasksUpdatesReq;
import 'package:frontend/graphql/__generated__/subscribeUpdates.var.gql.dart'
    show GsubscribeTasksUpdatesVars;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
    show GTaskDetailsData;
import 'package:frontend/graphql/__generated__/taskDetails.req.gql.dart'
    show GTaskDetailsReq;
import 'package:frontend/graphql/__generated__/taskDetails.var.gql.dart'
    show GTaskDetailsVars;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.data.gql.dart'
    show GtasksUpdateDetailsData, GtasksUpdateDetailsData_tasks;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.req.gql.dart'
    show GtasksUpdateDetailsReq;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.var.gql.dart'
    show GtasksUpdateDetailsVars;
import 'package:gql_code_builder_serializers/gql_code_builder_serializers.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GFoo,
  GTaskDetailsData,
  GTaskDetailsReq,
  GTaskDetailsVars,
  GgetTasksData,
  GgetTasksData_tasks,
  GgetTasksReq,
  GgetTasksVars,
  GsubscribeTasksUpdatesData,
  GsubscribeTasksUpdatesData_tasksUpdates,
  GsubscribeTasksUpdatesData_tasksUpdates_tasks,
  GsubscribeTasksUpdatesReq,
  GsubscribeTasksUpdatesVars,
  GtasksUpdateDetailsData,
  GtasksUpdateDetailsData_tasks,
  GtasksUpdateDetailsReq,
  GtasksUpdateDetailsVars,
])
final Serializers serializers = _serializersBuilder.build();
