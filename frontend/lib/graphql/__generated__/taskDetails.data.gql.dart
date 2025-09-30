// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:frontend/__generated__/serializers.gql.dart' as _i1;

part 'taskDetails.data.gql.g.dart';

abstract class GTaskDetails {
  String get G__typename;
  int get id;
  String get text;
  bool get completed;
  Map<String, dynamic> toJson();
}

abstract class GTaskDetailsData
    implements Built<GTaskDetailsData, GTaskDetailsDataBuilder>, GTaskDetails {
  GTaskDetailsData._();

  factory GTaskDetailsData([void Function(GTaskDetailsDataBuilder b) updates]) =
      _$GTaskDetailsData;

  static void _initializeBuilder(GTaskDetailsDataBuilder b) =>
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
  static Serializer<GTaskDetailsData> get serializer =>
      _$gTaskDetailsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTaskDetailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTaskDetailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTaskDetailsData.serializer,
        json,
      );
}
