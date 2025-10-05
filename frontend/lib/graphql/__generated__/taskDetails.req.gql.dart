// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:frontend/__generated__/serializers.gql.dart' as _i6;
import 'package:frontend/graphql/__generated__/taskDetails.ast.gql.dart' as _i4;
import 'package:frontend/graphql/__generated__/taskDetails.data.gql.dart'
    as _i2;
import 'package:frontend/graphql/__generated__/taskDetails.var.gql.dart' as _i3;
import 'package:gql/ast.dart' as _i5;

part 'taskDetails.req.gql.g.dart';

abstract class GTaskDetailsReq
    implements
        Built<GTaskDetailsReq, GTaskDetailsReqBuilder>,
        _i1.FragmentRequest<_i2.GTaskDetailsData, _i3.GTaskDetailsVars> {
  GTaskDetailsReq._();

  factory GTaskDetailsReq([void Function(GTaskDetailsReqBuilder b) updates]) =
      _$GTaskDetailsReq;

  static void _initializeBuilder(GTaskDetailsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'TaskDetails';

  @override
  _i3.GTaskDetailsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GTaskDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GTaskDetailsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GTaskDetailsData data) => data.toJson();

  static Serializer<GTaskDetailsReq> get serializer =>
      _$gTaskDetailsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GTaskDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTaskDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GTaskDetailsReq.serializer,
        json,
      );
}
