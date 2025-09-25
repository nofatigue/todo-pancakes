// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:frontend/__generated__/schema.schema.gql.dart' show GFoo;
import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart'
    show GTaskDetailsData, GgetTasksData, GgetTasksData_tasks;
import 'package:frontend/graphql/__generated__/getTasks.req.gql.dart'
    show GTaskDetailsReq, GgetTasksReq;
import 'package:frontend/graphql/__generated__/getTasks.var.gql.dart'
    show GTaskDetailsVars, GgetTasksVars;
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
])
final Serializers serializers = _serializersBuilder.build();
