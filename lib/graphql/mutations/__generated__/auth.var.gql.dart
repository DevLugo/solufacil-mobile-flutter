// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:solufacil_mobile/__generated__/schema.schema.gql.dart' as _i1;
import 'package:solufacil_mobile/__generated__/serializers.gql.dart' as _i2;

part 'auth.var.gql.g.dart';

abstract class GsignUpVars implements Built<GsignUpVars, GsignUpVarsBuilder> {
  GsignUpVars._();

  factory GsignUpVars([void Function(GsignUpVarsBuilder b) updates]) =
      _$GsignUpVars;

  _i1.GUserCreateInput get input;
  static Serializer<GsignUpVars> get serializer => _$gsignUpVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GsignUpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GsignUpVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GsignUpVars.serializer,
        json,
      );
}
