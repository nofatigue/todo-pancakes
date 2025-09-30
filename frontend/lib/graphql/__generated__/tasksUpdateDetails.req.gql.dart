// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:frontend/__generated__/serializers.gql.dart' as _i6;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.ast.gql.dart'
    as _i4;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.data.gql.dart'
    as _i2;
import 'package:frontend/graphql/__generated__/tasksUpdateDetails.var.gql.dart'
    as _i3;
import 'package:gql/ast.dart' as _i5;

part 'tasksUpdateDetails.req.gql.g.dart';

abstract class GtasksUpdateDetailsReq
    implements
        Built<GtasksUpdateDetailsReq, GtasksUpdateDetailsReqBuilder>,
        _i1.FragmentRequest<_i2.GtasksUpdateDetailsData,
            _i3.GtasksUpdateDetailsVars> {
  GtasksUpdateDetailsReq._();

  factory GtasksUpdateDetailsReq(
          [void Function(GtasksUpdateDetailsReqBuilder b) updates]) =
      _$GtasksUpdateDetailsReq;

  static void _initializeBuilder(GtasksUpdateDetailsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'tasksUpdateDetails';

  @override
  _i3.GtasksUpdateDetailsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GtasksUpdateDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GtasksUpdateDetailsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GtasksUpdateDetailsData data) =>
      data.toJson();

  static Serializer<GtasksUpdateDetailsReq> get serializer =>
      _$gtasksUpdateDetailsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtasksUpdateDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtasksUpdateDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtasksUpdateDetailsReq.serializer,
        json,
      );
}
