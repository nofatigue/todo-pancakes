// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:frontend/__generated__/serializers.gql.dart' as _i6;
import 'package:frontend/graphql/__generated__/subscribeUpdates.ast.gql.dart'
    as _i5;
import 'package:frontend/graphql/__generated__/subscribeUpdates.data.gql.dart'
    as _i2;
import 'package:frontend/graphql/__generated__/subscribeUpdates.var.gql.dart'
    as _i3;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'subscribeUpdates.req.gql.g.dart';

abstract class GsubscribeTasksUpdatesReq
    implements
        Built<GsubscribeTasksUpdatesReq, GsubscribeTasksUpdatesReqBuilder>,
        _i1.OperationRequest<_i2.GsubscribeTasksUpdatesData,
            _i3.GsubscribeTasksUpdatesVars> {
  GsubscribeTasksUpdatesReq._();

  factory GsubscribeTasksUpdatesReq(
          [void Function(GsubscribeTasksUpdatesReqBuilder b) updates]) =
      _$GsubscribeTasksUpdatesReq;

  static void _initializeBuilder(GsubscribeTasksUpdatesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'subscribeTasksUpdates',
    )
    ..executeOnListen = true;

  @override
  _i3.GsubscribeTasksUpdatesVars get vars;
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
  _i2.GsubscribeTasksUpdatesData? Function(
    _i2.GsubscribeTasksUpdatesData?,
    _i2.GsubscribeTasksUpdatesData?,
  )? get updateResult;
  @override
  _i2.GsubscribeTasksUpdatesData? get optimisticResponse;
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
  _i2.GsubscribeTasksUpdatesData? parseData(Map<String, dynamic> json) =>
      _i2.GsubscribeTasksUpdatesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GsubscribeTasksUpdatesData data) =>
      data.toJson();

  @override
  _i1.OperationRequest<_i2.GsubscribeTasksUpdatesData,
      _i3.GsubscribeTasksUpdatesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GsubscribeTasksUpdatesReq> get serializer =>
      _$gsubscribeTasksUpdatesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GsubscribeTasksUpdatesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsubscribeTasksUpdatesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GsubscribeTasksUpdatesReq.serializer,
        json,
      );
}
