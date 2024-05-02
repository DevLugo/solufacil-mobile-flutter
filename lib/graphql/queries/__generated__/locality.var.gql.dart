// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'locality.var.gql.g.dart';

abstract class GLocationsVars
    implements Built<GLocationsVars, GLocationsVarsBuilder> {
  GLocationsVars._();

  factory GLocationsVars([void Function(GLocationsVarsBuilder b) updates]) =
      _$GLocationsVars;

  _i1.GLocationWhereInput get where;
  static Serializer<GLocationsVars> get serializer =>
      _$gLocationsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GLocationsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLocationsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GLocationsVars.serializer,
        json,
      );
}
