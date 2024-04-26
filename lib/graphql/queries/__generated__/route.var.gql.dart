// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'route.var.gql.g.dart';

abstract class GGetRoutesVars
    implements Built<GGetRoutesVars, GGetRoutesVarsBuilder> {
  GGetRoutesVars._();

  factory GGetRoutesVars([void Function(GGetRoutesVarsBuilder b) updates]) =
      _$GGetRoutesVars;

  _i1.GRouteWhereInput get where;
  static Serializer<GGetRoutesVars> get serializer =>
      _$gGetRoutesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetRoutesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetRoutesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetRoutesVars.serializer,
        json,
      );
}
