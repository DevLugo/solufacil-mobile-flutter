// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i1;

part 'route.data.gql.g.dart';

abstract class GGetRoutesData
    implements Built<GGetRoutesData, GGetRoutesDataBuilder> {
  GGetRoutesData._();

  factory GGetRoutesData([void Function(GGetRoutesDataBuilder b) updates]) =
      _$GGetRoutesData;

  static void _initializeBuilder(GGetRoutesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetRoutesData_getRoutes> get getRoutes;
  static Serializer<GGetRoutesData> get serializer =>
      _$gGetRoutesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetRoutesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetRoutesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetRoutesData.serializer,
        json,
      );
}

abstract class GGetRoutesData_getRoutes
    implements
        Built<GGetRoutesData_getRoutes, GGetRoutesData_getRoutesBuilder> {
  GGetRoutesData_getRoutes._();

  factory GGetRoutesData_getRoutes(
          [void Function(GGetRoutesData_getRoutesBuilder b) updates]) =
      _$GGetRoutesData_getRoutes;

  static void _initializeBuilder(GGetRoutesData_getRoutesBuilder b) =>
      b..G__typename = 'Route';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetRoutesData_getRoutes> get serializer =>
      _$gGetRoutesDataGetRoutesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetRoutesData_getRoutes.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetRoutesData_getRoutes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetRoutesData_getRoutes.serializer,
        json,
      );
}
