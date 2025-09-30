// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:frontend/__generated__/serializers.gql.dart' as _i6;
import 'package:frontend/graphql/__generated__/getTasks.ast.gql.dart' as _i5;
import 'package:frontend/graphql/__generated__/getTasks.data.gql.dart' as _i2;
import 'package:frontend/graphql/__generated__/getTasks.var.gql.dart' as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'getTasks.req.gql.g.dart';

abstract class GgetTasksReq
    implements
        Built<GgetTasksReq, GgetTasksReqBuilder>,
        _i1.OperationRequest<_i2.GgetTasksData, _i3.GgetTasksVars> {
  GgetTasksReq._();

  factory GgetTasksReq([void Function(GgetTasksReqBuilder b) updates]) =
      _$GgetTasksReq;

  static void _initializeBuilder(GgetTasksReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'getTasks',
    )
    ..executeOnListen = true;

  @override
  _i3.GgetTasksVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GgetTasksData? Function(
    _i2.GgetTasksData?,
    _i2.GgetTasksData?,
  )? get updateResult;
  @override
  _i2.GgetTasksData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GgetTasksData? parseData(Map<String, dynamic> json) =>
      _i2.GgetTasksData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GgetTasksData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GgetTasksData, _i3.GgetTasksVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GgetTasksReq> get serializer => _$ggetTasksReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GgetTasksReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GgetTasksReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GgetTasksReq.serializer,
        json,
      );
}
